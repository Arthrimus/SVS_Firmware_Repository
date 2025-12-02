# PowerShell GUI version of the SVS Firmware Update Tool
Add-Type -AssemblyName System.Windows.Forms

function Show-TemporaryMessage
{
	param (
		[string]$message,
		[string]$title = "SVS Firmware Update Tool",
		[int]$duration = 1000
	)
	$form = New-Object System.Windows.Forms.Form
	$form.Text = $title
	$form.Width = 550
	$form.Height = 150
	$form.TopMost = $true
	$form.StartPosition = "CenterScreen"
	
	# This base64 string holds the bytes that make up the SVS icon
	$iconBase64 = 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAIAAAD8GO2jAAAABGdBTUEAALEQa0zv0AAAACBjSFJNAACHDwAAjA8AAP1SAACBQAAAfXkAAOmLAAA85QAAGcxzPIV3AAABCGlDQ1BJQ0MgUHJvZmlsZQAAKM9jYGBckZOcW8wkwMCQm1dSFOTupBARGaXAfoeBkUGSgZlBk8EyMbm4wDEgwIcBJ/h2DagaCC7rgsxiIA1wpqQWJwPpD0Acn1xQVAJ0E8gunvKSAhA7AsgWKQI6CsjOAbHTIewGEDsJwp4CVhMS5Axk8wDZDulI7CQkNtQuEGBNNkrORHZIcmlRGZQpBcSnGU8yJ7NO4sjm/iZgLxoobaL4UXOCkYT1JDfWwPLYt9kFVaydG2fVrMncX3v58EuD//9LUitKQJqdnQ0YQGGIHjYIsfxFDAwWXxkYmCcgxJJmMjBsb2VgkLiFEFNZwMDA38LAsO08APD9Tdt4gbWmAAAACXBIWXMAAAsRAAALEQF/ZF+RAAAEJElEQVRIS+2WW0tiURTHO3pKu2fhdNHu5kONBl2glKCBgoI+QJ+mvk0PQU+9dKGegqALVHQlsyhLLS2nSM1Lzm+7zWYcmJmHHBiYJZyzz9rr8l//tfZGJZVKFeRTNJl33uR/gt/Kv59AeX19VRSFFfMqF0JS6R/bWU2OvBlIwSxn3LOOSiKR0GhEHVmLjHX6926XXmQ/gSUBschxRxT5k4KF1JLp+fk5GokK0+9xpzPp9fry8vLCwkKhSKWi0ejT01MymSRCaWkpz3A4zKf0QIqKiqR9JkEsFru8vNzc3Ly6uorH4zig5ClxgcbcaP4y/KWhoUHRKC8vL0dHR+vr66FQiCidnZ0gc7vdkUgEY1yoyWQyjYyM1NXVqTKB1+udmZmZn5+/u7uTGqJrtdri4mJwEbGtra0KMVShub+/X1pamp2dfXh4aG5uPjk5OTg4AB8cSEAksNvsXV1dtbW1rDVAPjs7W15exs7v9wMHO9JQoNlsNhgMBCLKxsYGC/Q+nw/4p6enWFZUVJyfn+Po8XhITCjpm3xNskBUyQMbsMSGTqej5MHBQZhlXV9fDxs3NzfBYHB7exsC9Tr9/v4+0SmrsbGxp6fn8PAQR+JAyNDQEJgkMj5Br1IRDaHS7u5u/GXr2tvbnQ4n2LWqlufq6iqVwTKh6fbW1hZM4mWxWAYGBiji+PjY5XIBEWOob2luKSktqaysFDxPT0/zglnsAoEAYHGmeyazqcPSgQO7rlOX+9zN5GBDWQsLC9BSXV09MTExOjra1NRENdfX17jDYVlZmbXDCvtihGQCKKIWo9GID0awSSlwYvxkpFJyh76G9vb20DCLPGEc9oE/OTlJJ2tqamAj9hLzXOPq8d54dXodWclEWO3U1FQ8Fg8EA5ADOsIRHThwQsk2mw1nKCYBetrIvD0+PuI8PDw8NjYGUSjhGU6o++Liwn/rx4AECAFFD7w+79zcHFVTCrNMvZRGPiaHgbFardRht9t3d3dhj3FgfCkX9vFfWVmhJUBBT/VEY00djKXD4QCHOAe4LS4u4i+HAa6xVlUVximIMqGut7cXG8BiI9tLcRjv7OxwesBOaLbgEMeSEtFhepCZIl4MJWdSnnXS4kmXxsfHW1tbcQAyXJMDdAikO51OzioRGSp8AYQLvpxF3MHe398vp0hh7/b2dm1tDdJxwAglGPEHI3cDCVDCGFRwJjiuVNbX1wd1JONwoGQhYikKWMlh+2yzdFioQ9x4iXgC4OFImEz0QCbADn5Fi9LREWygjg6Jw6mqoIYB2TOpzN6g6AmtalVxY3Jtglpsp89ztgL5lMKaLZHkTaRSClspAsgrN329A+7dQCZg8XMgiehP5BfpEYVriRs485UH0Ygaf4TwsaKRPOQvR6YhOcR9oPyV/0X5g4/kuYKCgm+SMdABTd0jiAAAAABJRU5ErkJggg=='
	$iconBytes = [Convert]::FromBase64String($iconBase64)
	
	# initialize a Memory stream holding the bytes
	$stream = [System.IO.MemoryStream]::new($iconBytes, 0, $iconBytes.Length)
	$Form.Icon = [System.Drawing.Icon]::FromHandle(([System.Drawing.Bitmap]::new($stream).GetHIcon()))
	
	$label = New-Object System.Windows.Forms.Label
	$label.Text = $message
	$label.AutoSize = $true
	$label.Font = 'Microsoft Sans Serif,12'
	$label.Padding = New-Object System.Windows.Forms.Padding(30)
	$label.AutoSize = $True
	
	$form.Controls.Add($label)
	$form.AutoSize = $true
	$form.AutoSizeMode = 'GrowAndShrink'
	$form.Show()
	#Start-Sleep -Milliseconds $duration
	#$form.Close()
	return $Form
}

function Get-SVSComPort
{
	$form = Show-TemporaryMessage "Scanning for possible SVS Control Modules..." #-duration 3000
	
	Start-Sleep -Seconds 1
	$comPort = Get-CimInstance Win32_PnPEntity | Where-Object { $_.Caption -like "USB-SERIAL CH340*" } | Select-Object -ExpandProperty Caption
	Start-Sleep -Seconds 1
	
	$form.Close() | Out-Null
	
	if (-not $comPort)
	{
		$null = [System.Windows.Forms.MessageBox]::Show("No SVS Control Module Detected. Please check your USB connection.", "Error", [System.Windows.Forms.MessageBoxButtons]::OK)
		Exit 1 # No SVS found - no point continuing.
	}
	
	if ($comPort -match "\(COM(\d+)\)")
	{
		$portNumber = $matches[1]
	}
	else
	{
		$portNumber = $null
	}
	
	if ($portNumber)
	{
		$confirm = [System.Windows.Forms.MessageBox]::Show("Based on the scan, your SVS is probably connected to COM$portNumber. Is this correct?", "Confirm", [System.Windows.Forms.MessageBoxButtons]::YesNo)
		if ($confirm -eq [System.Windows.Forms.DialogResult]::Yes)
		{
			return $portNumber
		}
	}
	
	$form = New-Object System.Windows.Forms.Form
	$form.Text = "Enter COM Port"
	$form.Width = 300
	$form.Height = 150
	
	$label = New-Object System.Windows.Forms.Label
	$label.Text = "Enter the COM port number:"
	$label.Top = 20
	$label.Left = 10
	$label.AutoSize = $true
	
	$textbox = New-Object System.Windows.Forms.TextBox
	$textbox.Top = 50
	$textbox.Left = 10
	$textbox.Width = 260
	
	$button = New-Object System.Windows.Forms.Button
	$button.Text = "OK"
	$button.Top = 80
	$button.Left = 100
	$button.Add_Click({ $form.Close() })
    $button.DialogResult = [System.Windows.Forms.DialogResult]::OK
	
	$form.Controls.Add($label)
	$form.Controls.Add($textbox)
	$form.Controls.Add($button)
    $form.AcceptButton = $button
	
    $Result = $form.ShowDialog()

    # Read value only if OK was pressed
    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        $TextOutput = $textbox.Text
    } else {
        $TextOutput = $null
    }

    $form.Dispose()

    return $TextOutput
}

function Get-FirmwareFile
{
	$Form = Show-TemporaryMessage "Scanning for the newest SVS firmware file..."
	Start-Sleep -Seconds 1
	
	$firmwareFiles = Get-ChildItem -Path "." -Filter "SVS_FW_*.hex" | Sort-Object LastWriteTime -Descending
	
	$Form.Close() | Out-Null
	
	if ($firmwareFiles.Count -eq 0)
	{
		$Null = [System.Windows.Forms.MessageBox]::Show("No SVS firmware file found. Please download and place it in the folder.", "Error")
		exit
	}
	
	$latestFirmware = $firmwareFiles[0].Name
	$confirm = [System.Windows.Forms.MessageBox]::Show("Detected firmware file: $latestFirmware. Is this the firmware file you want to use?", "Confirm", [System.Windows.Forms.MessageBoxButtons]::YesNo)
	
	if ($confirm -eq [System.Windows.Forms.DialogResult]::Yes)
	{
		return $latestFirmware
	}
	
	$openFileDialog = New-Object System.Windows.Forms.OpenFileDialog
	$openFileDialog.InitialDirectory = "."
	$openFileDialog.Filter = "HEX Files (*.hex)|*.hex"
	$openFileDialog.Title = "Select Firmware File"
	
	if ($openFileDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK)
	{
		return $openFileDialog.FileName
	}
	
	return $null
}

function Flash-Firmware
{
	param (
		[string]$comPort,
		[string]$firmwareFile
	)
	
	$Form = Show-TemporaryMessage "Flashing firmware..."
	
	Start-Sleep -Milliseconds 500
	Start-Process -FilePath "tools\avrdude\7.2/bin/avrdude" -ArgumentList "-c urclock -p m328p -P COM$comPort -b 115200 -V -D -U flash:w:`"$firmwareFile`":i" -NoNewWindow -Wait
	Start-Sleep -Milliseconds 500
	
	$Form.Close() | Out-Null
	
	[System.Windows.Forms.MessageBox]::Show("Firmware update completed.", "Success")
}

# Main Execution
$comPort = Get-SVSComPort
if (-not $comPort) { exit }

$firmwareFile = Get-FirmwareFile
if (-not $firmwareFile) { exit }

Flash-Firmware -comPort $comPort -firmwareFile $firmwareFile
