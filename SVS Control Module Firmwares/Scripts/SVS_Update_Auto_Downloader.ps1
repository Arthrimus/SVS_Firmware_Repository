#requires -Version 5.1

# Load required .NET assemblies for GUI dialogs and secure networking
Add-Type -AssemblyName System.Windows.Forms
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Force termination on ANY error so our catch block captures full stack traces
$ErrorActionPreference = 'Stop'

# Resolve target directory (script location or current working directory)
$script:TargetDir = if ($PSScriptRoot) { $PSScriptRoot } else { (Get-Location).Path }
$script:LogFile   = Join-Path $script:TargetDir "SVS_Firmware_Update.log"

# =============================================================================
# ROBUST LOGGING FUNCTION
# =============================================================================
function Write-Log {
    param(
        [Parameter(Mandatory)]
        [string]$Message,
        [ValidateSet("INFO", "WARNING", "ERROR", "SUCCESS")]
        [string]$Level = "INFO"
    )
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss.fff"
    $logEntry  = "[$timestamp] [$Level] $Message"
    
    try { Add-Content -Path $script:LogFile -Value $logEntry -Force } catch {}
    
    switch ($Level) {
        "INFO"    { Write-Host $logEntry -ForegroundColor Green }
        "WARNING" { Write-Host $logEntry -ForegroundColor Yellow }
        "ERROR"   { Write-Host $logEntry -ForegroundColor Red }
        "SUCCESS" { Write-Host $logEntry -ForegroundColor Cyan }
    }
}

# =============================================================================
# HELPER FUNCTIONS
# =============================================================================
function Get-FirmwareVersion {
    param([string]$Name)
    $match = [regex]::Match($Name, '^SVS_FW_(.+)\.hex$')
    return $match.Groups[1].Value
}

function Compare-Versions {
    param([string]$v1, [string]$v2)
    try {
        return [version]$v1.CompareTo([version]$v2)
    }
    catch {
        return [string]::Compare($v1, $v2, [System.StringComparison]::OrdinalIgnoreCase)
    }
}

function Download-ToolsRecursively {
    param([string]$GitHubPath, [string]$LocalPath)
    
    $apiUrl = "https://api.github.com/repos/$script:Owner/$script:Repo/contents/$GitHubPath"
    $items  = Invoke-RestMethod -Uri $apiUrl -Headers $script:Headers -ErrorAction Stop
    
    foreach ($item in $items) {
        $localTarget = Join-Path $LocalPath $item.name
        
        if ($item.type -eq 'file') {
            $dir = Split-Path $localTarget -Parent
            if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }
            Write-Log "Downloading dependency: $localTarget"
            Invoke-WebRequest -Uri $item.download_url -OutFile $localTarget -UseBasicParsing -ErrorAction Stop
        }
        elseif ($item.type -eq 'dir') {
            Download-ToolsRecursively -GitHubPath "$GitHubPath/$($item.name)" -LocalPath $localTarget
        }
    }
}

function Get-SVSUtilityProcesses {
    # Safely find running instances despite Windows 15-char process name limit
    Get-Process -ErrorAction SilentlyContinue | Where-Object {
        $match = $false
        if ($_.ProcessName -match 'SVS.*Utility') { $match = $true }
        if (-not $match) {
            try {
                if ($_.MainModule.FileName -like '*SVS_Management_Utility_*') { $match = $true }
            } catch {} # Ignore access denied or system process errors
        }
        return $match
    }
}

# =============================================================================
# MAIN EXECUTION
# =============================================================================
try {
    Write-Log "=== Script Execution Started ==="
    Write-Log "PowerShell Version : $($PSVersionTable.PSVersion.ToString())"
    Write-Log "Working Directory  : $script:TargetDir"
    Write-Log "Log File Path      : $script:LogFile"

    # GitHub Configuration
    $script:Owner = "Arthrimus"
    $script:Repo  = "SVS_Firmware_Repository"
    $script:Headers = @{
        "Accept"     = "application/vnd.github.v3+json"
        "User-Agent" = "PowerShell-Script/5.1"
    }

    # ==========================================
    # FIRMWARE UPDATE CHECK
    # ==========================================
    $fwApiPath = "SVS%20Control%20Module%20Firmwares/Firmware"
    $fwApiUrl  = "https://api.github.com/repos/$script:Owner/$script:Repo/contents/$fwApiPath"
    
    Write-Log "Fetching firmware list from GitHub..."
    $remoteFirmware = Invoke-RestMethod -Uri $fwApiUrl -Headers $script:Headers -ErrorAction Stop

    $firmwareFiles = $remoteFirmware | Where-Object {
        $_.type -eq 'file' -and 
        $_.name -match '^SVS_FW_.*\.hex$' -and 
        $_.name -notmatch '_BETA\.hex$'
    }

    $betaFiles = $remoteFirmware | Where-Object { $_.type -eq 'file' -and $_.name -match '_BETA\.hex$' }
    if ($betaFiles) { Write-Log "Skipped $($betaFiles.Count) BETA firmware file(s): $($betaFiles.name -join ', ')" }

    if (-not $firmwareFiles) {
        Write-Log "No stable firmware files found in the repository." "WARNING"
    }
    else {
        $latestRemote = $null
        foreach ($item in $firmwareFiles) {
            $ver = Get-FirmwareVersion -Name $item.name
            if (-not $latestRemote) { $latestRemote = @{ Name = $item.name; Version = $ver; Url = $item.download_url } }
            elseif (Compare-Versions -v1 $ver -v2 $latestRemote.Version -gt 0) { $latestRemote = @{ Name = $item.name; Version = $ver; Url = $item.download_url } }
        }

        $localFiles = Get-ChildItem -Path $script:TargetDir -File -ErrorAction SilentlyContinue |
                      Where-Object { $_.Name -match '^SVS_FW_.*\.hex$' -and $_.Name -notmatch '_BETA\.hex$' }
        $latestLocal = $null
        if ($localFiles) {
            foreach ($lf in $localFiles) {
                $ver = Get-FirmwareVersion -Name $lf.Name
                if (-not $latestLocal) { $latestLocal = $ver }
                elseif (Compare-Versions -v1 $ver -v2 $latestLocal -gt 0) { $latestLocal = $ver }
            }
        }

        $isFirmwareNewer = $false
        if (-not $latestLocal) { $isFirmwareNewer = $true }
        elseif (Compare-Versions -v1 $latestRemote.Version -v2 $latestLocal -gt 0) { $isFirmwareNewer = $true }

        if ($isFirmwareNewer) {
            $currentVerStr = if ($latestLocal) { "v$latestLocal" } else { "None" }
            $message = "A newer firmware version is available: v$($latestRemote.Version) (currently installed: $currentVerStr)`n`nWould you like to download the latest update?"
            $title   = "SVS Firmware Update Available"

            $userConfirmed = $false
            try {
                $result = [System.Windows.Forms.MessageBox]::Show($message, $title, [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Information)
                $userConfirmed = ($result -eq [System.Windows.Forms.DialogResult]::Yes)
                Write-Log "Firmware dialog result: $result"
            }
            catch {
                Write-Log "Windows Forms dialog failed. Falling back to console prompt." "WARNING"
                $response = Read-Host $message
                $userConfirmed = ($response -match '^y(es)?$', 'i')
            }

            if ($userConfirmed) {
                $avrdudeExe  = Join-Path $script:TargetDir "tools\avrdude\7.2\bin\avrdude.exe"
                $avrdudeConf = Join-Path $script:TargetDir "tools\avrdude\7.2\etc\avrdude.conf"
                $missingDeps = (-not (Test-Path $avrdudeExe)) -or (-not (Test-Path $avrdudeConf))

                if ($missingDeps) {
                    Write-Log "Missing avrdude dependencies. Downloading tools folder..."
                    $toolsGitHubPath = "SVS%20Control%20Module%20Firmwares/Scripts/tools"
                    $toolsLocalPath  = Join-Path $script:TargetDir "tools"
                    Download-ToolsRecursively -GitHubPath $toolsGitHubPath -LocalPath $toolsLocalPath
                    Write-Log "Dependencies downloaded successfully." "SUCCESS"
                } else { Write-Log "Avrdude dependencies already present. Skipping download." }

                $outFile = Join-Path $script:TargetDir $latestRemote.Name
                Write-Log "Downloading latest firmware: $($latestRemote.Name) (v$($latestRemote.Version))..."
                Invoke-WebRequest -Uri $latestRemote.Url -OutFile $outFile -UseBasicParsing -ErrorAction Stop
                Write-Log "Firmware download complete. Saved to: $outFile" "SUCCESS"
            }
            else { Write-Log "Firmware update skipped by user." }
        }
        else { Write-Log "Latest stable firmware (v$($latestRemote.Version)) is already installed. No update needed." "INFO" }
    }

    # ==========================================
    # MANAGEMENT UTILITY UPDATE CHECK
    # ==========================================
    Write-Log "Checking for SVS Management Utility updates..."
    $utilApiPath = "SVS%20Control%20Module%20Firmwares/Scripts"
    $utilApiUrl  = "https://api.github.com/repos/$script:Owner/$script:Repo/contents/$utilApiPath"
    
    $remoteScripts = Invoke-RestMethod -Uri $utilApiUrl -Headers $script:Headers -ErrorAction Stop
    $utilityFiles = $remoteScripts | Where-Object { $_.type -eq 'file' -and $_.name -match '^SVS_Management_Utility_V.*\.exe$' }

    if ($utilityFiles) {
        $latestUtilityRemote = $null
        foreach ($item in $utilityFiles) {
            $ver = ( [regex]::Match($item.name, '^SVS_Management_Utility_V(.+)\.exe$') ).Groups[1].Value
            if (-not $latestUtilityRemote) { $latestUtilityRemote = @{ Name = $item.name; Version = $ver; Url = $item.download_url } }
            elseif (Compare-Versions -v1 $ver -v2 $latestUtilityRemote.Version -gt 0) { $latestUtilityRemote = @{ Name = $item.name; Version = $ver; Url = $item.download_url } }
        }

        $localUtilityFiles = Get-ChildItem -Path $script:TargetDir -File -ErrorAction SilentlyContinue |
                             Where-Object { $_.Name -match '^SVS_Management_Utility_V.*\.exe$' }
        $latestUtilityLocal = $null
        if ($localUtilityFiles) {
            foreach ($lf in $localUtilityFiles) {
                $ver = ( [regex]::Match($lf.Name, '^SVS_Management_Utility_V(.+)\.exe$') ).Groups[1].Value
                if (-not $latestUtilityLocal) { $latestUtilityLocal = $ver }
                elseif (Compare-Versions -v1 $ver -v2 $latestUtilityLocal -gt 0) { $latestUtilityLocal = $ver }
            }
        }

        $isUtilityNewer = $false
        if (-not $latestUtilityLocal) { $isUtilityNewer = $true }
        elseif (Compare-Versions -v1 $latestUtilityRemote.Version -v2 $latestUtilityLocal -gt 0) { $isUtilityNewer = $true }

        if ($isUtilityNewer) {
            $currentUtilVer = if ($latestUtilityLocal) { "v$latestUtilityLocal" } else { "None" }
            $utilMessage = "A newer version of SVS Management Utility is available: v$($latestUtilityRemote.Version) (currently installed: $currentUtilVer)`n`nWould you like to download the latest update?"
            $utilTitle   = "SVS Management Utility Update Available"

            $utilConfirmed = $false
            try {
                $utilResult = [System.Windows.Forms.MessageBox]::Show($utilMessage, $utilTitle, [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Information)
                $utilConfirmed = ($utilResult -eq [System.Windows.Forms.DialogResult]::Yes)
                Write-Log "Utility dialog result: $utilResult"
            }
            catch {
                Write-Log "Utility dialog failed. Falling back to console prompt." "WARNING"
                $utilResponse = Read-Host $utilMessage
                $utilConfirmed = ($utilResponse -match '^y(es)?$', 'i')
            }

            if ($utilConfirmed) {
                $utilOutFile = Join-Path $script:TargetDir $latestUtilityRemote.Name
                Write-Log "Downloading SVS Management Utility: $($latestUtilityRemote.Name) (v$($latestUtilityRemote.Version))..."
                Invoke-WebRequest -Uri $latestUtilityRemote.Url -OutFile $utilOutFile -UseBasicParsing -ErrorAction Stop
                Write-Log "Utility download complete. Saved to: $utilOutFile" "SUCCESS"

                # Terminate old instances safely
                try {
                    $runningUtils = Get-SVSUtilityProcesses
                    if ($runningUtils) {
                        Write-Log "Found $($runningUtils.Count) running instance(s) of SVS Management Utility. Terminating..."
                        $runningUtils | Stop-Process -Force -ErrorAction SilentlyContinue
                        Start-Sleep -Seconds 2 # Allow OS to release file locks
                        Write-Log "Successfully terminated running instances."
                    } else {
                        Write-Log "No running instances of SVS Management Utility detected."
                    }
                }
                catch {
                    Write-Log "Warning: Could not terminate running instances. $($_.Exception.Message)" "WARNING"
                }

                # Launch new version
                try {
                    Write-Log "Launching newly downloaded SVS Management Utility..."
                    Start-Process -FilePath $utilOutFile -ErrorAction Stop
                    Write-Log "SVS Management Utility launched successfully." "SUCCESS"
                }
                catch {
                    Write-Log "Failed to launch SVS Management Utility: $($_.Exception.Message)" "ERROR"
                }
            }
            else { Write-Log "Utility update skipped by user." }
        }
        else { Write-Log "Latest SVS Management Utility (v$($latestUtilityRemote.Version)) is already installed. No update needed." "INFO" }
    }
    else { Write-Log "No SVS Management Utility files found in the repository." "WARNING" }

}
catch {
    Write-Log "=== UNEXPECTED ERROR OCCURRED ===" "ERROR"
    Write-Log "Message          : $($_.Exception.Message)" "ERROR"
    Write-Log "Error ID         : $($_.FullyQualifiedErrorId)" "ERROR"
    Write-Log "Category         : $($_.CategoryInfo.Category)" "ERROR"
    Write-Log "Script StackTrace:`n$($_.ScriptStackTrace)" "ERROR"
    Write-Log "=== Script Terminated Due to Error ===" "ERROR"
    exit 1
}
finally {
    Write-Log "=== Script Execution Finished ==="
}