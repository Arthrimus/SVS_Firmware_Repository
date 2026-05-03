$ireditor_Click = {
    $global:presetclick = 0
    MakeIRCODEVisible
    $ireditorform.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]344,[System.Int32]598))
    $ireditorform.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]344,[System.Int32]598))
    $ireditorform.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]344,[System.Int32]598))
    $ireditorform.ShowDialog()
}

$ytorbutton_Click = {
    $autopropriority.Text = [System.String]'YPbPr to RGB Conversion Module Configuration'
    $Label1.Text = [System.String]'Checked = YPbPr to RGB Conversion ON
Unchecked = YPbPr to RGB Conversion OFF'
      $CheckedListBox5.Visible = $true
      $CheckedListBox4.Visible = $false
      $CheckedListBox3.Visible = $false
      $CheckedListBox2.Visible = $false
      $CheckedListBox1.Visible = $false
      $CheckBox1.Checked = $false
      
            #  EEPROM READING FUNCTION----------------------------------------------------------------------------------------------------------------------------------------------
            $itemnum = 0
            $Form = Show-TemporaryMessage "Reading EEPROM Data..."
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
            $port.open()  
            $port.WriteLine("G0`r`n")                 #Clean intial load
            $cleancheck = $port.ReadLine()
            while ($cleancheck.StartsWith("SVS")){
            $cleancheck = $port.ReadLine()
            }
          for ($i = 1; $i -le $innumint; $i++) {
            $port.WriteLine("G$i`r`n")
            $line = $port.ReadLine()
            while ($line.StartsWith("SVS")){
            $line = $port.ReadLine()
            }
             $line = $line -replace '\D', ''
             [int]$ebyte = $line
            if ($ebyte -eq 0){
            $checkedListBox5.SetItemChecked($itemnum, $true)
            }else{
            $checkedListBox5.SetItemChecked($itemnum, $false)
            }
            $itemnum++
            Start-Sleep -Milliseconds 10
             }
        
        $port.close() 
        $Form.close()
             # END OF EEPROM READING FUNCTION----------------------------------------------------------------------------------------------------------------------------------------------

      $autopropriority.ShowDialog()
}
$rtoybutton_Click = {
    $autopropriority.Text = [System.String]'RGB to YPbPr Conversion Module Configuration'
    $Label1.Text = [System.String]'Checked = RGB to YPbPr Conversion ON
Unchecked = RGB to YPbPr Conversion OFF'
      $CheckedListBox5.Visible = $false
      $CheckedListBox4.Visible = $true
      $CheckedListBox3.Visible = $false
      $CheckedListBox2.Visible = $false
      $CheckedListBox1.Visible = $false
      $CheckBox1.Checked = $false

            #  EEPROM READING FUNCTION----------------------------------------------------------------------------------------------------------------------------------------------
            $itemnum = 0
            $Form = Show-TemporaryMessage "Reading EEPROM Data..."
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
            $port.open()  
            $port.WriteLine("Y0`r`n")                 #Clean intial load
            $cleancheck = $port.ReadLine()
            while ($cleancheck.StartsWith("SVS")){
            $cleancheck = $port.ReadLine()
            }
          for ($i = 1; $i -le $innumint; $i++) {
            $port.WriteLine("Y$i`r`n")
            $line = $port.ReadLine()
            while ($line.StartsWith("SVS")){
            $line = $port.ReadLine()
            }
             $line = $line -replace '\D', ''
             [int]$ebyte = $line
            if ($ebyte -eq 0){
            $checkedListBox4.SetItemChecked($itemnum, $true)
            }else{
            $checkedListBox4.SetItemChecked($itemnum, $false)
            }
            $itemnum++
            Start-Sleep -Milliseconds 10
             }
        
        $port.close() 
        $Form.close()
             # END OF EEPROM READING FUNCTION----------------------------------------------------------------------------------------------------------------------------------------------

      $autopropriority.ShowDialog()
}
$syncbbutton_Click = {
    $autopropriority.Text = [System.String]'Sync Bypass Configuration'
    $Label1.Text = [System.String]'Checked = Sync Bypass ON
Unchecked = Sync Bypass OFF'
      $CheckedListBox5.Visible = $false
      $CheckedListBox4.Visible = $false
      $CheckedListBox3.Visible = $true
      $CheckedListBox2.Visible = $false
      $CheckedListBox1.Visible = $false
      $CheckBox1.Checked = $false
      #  EEPROM READING FUNCTION----------------------------------------------------------------------------------------------------------------------------------------------
            $Form = Show-TemporaryMessage "Reading EEPROM Data..."
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
            $port.open()  
            $port.WriteLine("R0`r`n")                 #Clean intial load
            $cleancheck = $port.ReadLine()
            while ($cleancheck.StartsWith("SVS")){
            $cleancheck = $port.ReadLine()
            }
          for ($i = 0; $i -le $epad; $i++) {
            [int]$epadbit = $i+590
            $port.WriteLine("R$epadbit`r`n")
            $line = $port.ReadLine()
             $line = $line -replace '\D', ''
             [int]$ebyte = $line
             for ($j = 0; $j -le 7; $j++) {
            $bitValue = ($ebyte -shr $j) -band 1
            try {
            if ($bitValue -eq 1){
            $checkedListBox3.SetItemChecked($itemnum, $true)
            }else{
            $checkedListBox3.SetItemChecked($itemnum, $false)
            }
        }catch{}
            $itemnum++
             }
        $itemnum = 0
        for ($i = 0; $i -le $epad; $i++) {
            [int]$epadbit = $i+630
            $port.WriteLine("R$epadbit`r`n")
            $line = $port.ReadLine()
             $line = $line -replace '\D', ''
             [int]$ebyte = $line
             for ($j = 0; $j -le 7; $j++) {
            $bitValue = ($ebyte -shr $j) -band 1
            try {
            if ($bitValue -eq 0){
            $listnum = $itemnum + 1
            $CheckedListBox3.Items[$itemnum] = "Input #$listnum - SCART V3"
            }else{
            }
         }catch{}
            $itemnum++
             }
        }
        }
        $port.close() 
        $Form.close()
             # END OF EEPROM READING FUNCTION----------------------------------------------------------------------------------------------------------------------------------------------
      $autopropriority.ShowDialog()
      
}
$rtosbutton_Click = {
    $autopropriority.Text = [System.String]'RGBS to RGsB Conversion Configuration'
    $Label1.Text = [System.String]'Checked = RGBS to RGsB Conversion ON
Unchecked = RGBS to RGsB Conversion OFF'
      $CheckedListBox5.Visible = $false
      $CheckedListBox4.Visible = $false
      $CheckedListBox2.Visible = $true
      $CheckedListBox1.Visible = $false
      $CheckedListBox3.Visible = $false
      $CheckBox1.Checked = $false
      #  EEPROM READING FUNCTION----------------------------------------------------------------------------------------------------------------------------------------------
            $Form = Show-TemporaryMessage "Reading EEPROM Data..."
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
            $port.open()  
            $port.WriteLine("R0`r`n")                 #Clean intial load
            $cleancheck = $port.ReadLine()
            while ($cleancheck.StartsWith("SVS")){
            $cleancheck = $port.ReadLine()
            }
          for ($i = 0; $i -le $epad; $i++) {
            [int]$epadbit = $i+550
            $port.WriteLine("R$epadbit`r`n")
            $line = $port.ReadLine()
             $line = $line -replace '\D', ''
             [int]$ebyte = $line
             for ($j = 0; $j -le 7; $j++) {
            $bitValue = ($ebyte -shr $j) -band 1
            try {
            if ($bitValue -eq 0){
            $checkedListBox2.SetItemChecked($itemnum, $true)
            }else{
             $checkedListBox2.SetItemChecked($itemnum, $false)
            }
         }catch{}
            $itemnum++
             }
        }
        $itemnum = 0
        for ($i = 0; $i -le $epad; $i++) {
            [int]$epadbit = $i+670
            $port.WriteLine("R$epadbit`r`n")
            $line = $port.ReadLine()
             $line = $line -replace '\D', ''
             [int]$ebyte = $line
             for ($j = 0; $j -le 7; $j++) {
            $bitValue = ($ebyte -shr $j) -band 1
            try {
            if ($bitValue -eq 0){
            $listnum = $itemnum + 1
            $CheckedListBox2.Items[$itemnum] = "Input #$listnum - VGA V3"
            }else{
            }
         }catch{}
            $itemnum++
             }
        }
        $itemnum = 0
        for ($i = 0; $i -le $epad; $i++) {
            [int]$epadbit = $i+630
            $port.WriteLine("R$epadbit`r`n")
            $line = $port.ReadLine()
             $line = $line -replace '\D', ''
             [int]$ebyte = $line
             for ($j = 0; $j -le 7; $j++) {
            $bitValue = ($ebyte -shr $j) -band 1
            try {
            if ($bitValue -eq 0){
            $listnum = $itemnum + 1
            $CheckedListBox2.Items[$itemnum] = "Input #$listnum - SCART V3"
            }else{
            }
         }catch{}
            $itemnum++
             }
        }
        $port.close() 
        $Form.close()
             # END OF EEPROM READING FUNCTION----------------------------------------------------------------------------------------------------------------------------------------------
      $autopropriority.ShowDialog()
}
$apributton_Click = {
    $autopropriority.Text = [System.String]'Auto Profile Priority Configuration'
    $Label1.Text = [System.String]'Checked = Auto Profile Priority ON
Unchecked = Auto Profile Priority OFF'
      $CheckedListBox5.Visible = $false
      $CheckedListBox4.Visible = $false
      $CheckedListBox1.Visible = $true
      $CheckedListBox2.Visible = $false
      $CheckedListBox3.Visible = $false
      $CheckBox1.Checked = $true

      
            #  EEPROM READING FUNCTION----------------------------------------------------------------------------------------------------------------------------------------------
            $Form = Show-TemporaryMessage "Reading EEPROM Data..."
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
            $port.open()  
            $port.WriteLine("R0`r`n")                 #Clean intial load
            $cleancheck = $port.ReadLine()
            while ($cleancheck.StartsWith("SVS")){
            $cleancheck = $port.ReadLine()
            }
          for ($i = 0; $i -le $epad; $i++) {
            [int]$epadbit = $i+513
            $port.WriteLine("R$epadbit`r`n")
            $line = $port.ReadLine()
             $line = $line -replace '\D', ''
             [int]$ebyte = $line
             for ($j = 0; $j -le 7; $j++) {
            $bitValue = ($ebyte -shr $j) -band 1
            try {
            if ($bitValue -eq 1){
            $checkedListBox1.SetItemChecked($itemnum, $true)
            }else{
            $checkedListBox1.SetItemChecked($itemnum, $false)
            }
        }catch {}
            $itemnum++
             }
        }
        $port.close() 
        $Form.close()
             # END OF EEPROM READING FUNCTION----------------------------------------------------------------------------------------------------------------------------------------------


      $autopropriority.ShowDialog()
}

$Button9_Click = { # change input
        $TextBox1.Focus()
        $TextBox1.SelectAll()
            $line = $TextBox1.Text
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
            $port.open()  
        $port.WriteLine("SVS_Change_Input_$line`r`n") 
                   while (!($line.StartsWith("SVS NEW"))){
			$line = $port.ReadLine()
            $line = $line.Trim()
			}
			$line = $line -replace '\D', ''
			$cinnum.Text = "$line"
    $port.close()
}

$Button8_Click = { # Seek Previous
            $line = $TextBox1.Text
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
            $port.open()  
        $port.WriteLine("SVS_Input_Seek_Down`r`n") 
                   while (!($line.StartsWith("SVS NEW")) -and !($line.StartsWith("SVS CURRENT"))){
			$line = $port.ReadLine()
            $line = $line.Trim()
			}
			$line = $line -replace '\D', ''
			$cinnum.Text = "$line"
    $port.close()
}

$Button7_Click = { # Seek Next
            $line = $TextBox1.Text
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
            $port.open()  
        $port.WriteLine("SVS_Input_Seek_Up`r`n") 
                   while (!($line.StartsWith("SVS NEW")) -and !($line.StartsWith("SVS CURRENT"))){
			$line = $port.ReadLine()
            $line = $line.Trim()
			}
			$line = $line -replace '\D', ''
			$cinnum.Text = "$line"
    $port.close()
}

$attrbox_CheckedChanged = {
            $line = $fwvnum.Text
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
            $port.open()  

    if ($attrbox.Checked -eq $true){
        $port.WriteLine("SVS_Attract_ON`r`n") 
    }else{
        $port.WriteLine("SVS_Attract_OFF`r`n") 
    }
    $port.close()
}

$browseb_Click = {
	$openFileDialog = New-Object System.Windows.Forms.OpenFileDialog
	$openFileDialog.InitialDirectory = "."
	$openFileDialog.Filter = "HEX Files (*.hex)|*.hex"
	$openFileDialog.Title = "Select Firmware File"
	
	if ($openFileDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK)
	{
        $firmtextbox.Text = $openFileDialog.FileName
		# return $openFileDialog.FileName
	}
	
	# return $null
}



$prev_Click = {
            $line = $fwvnum.Text
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
            $port.open()
            $port.WriteLine("SVS_Input_Down`r`n")   
            while (!($line.StartsWith("SVS NEW"))){
			$line = $port.ReadLine()
            $line = $line.Trim()
			}
			$line = $line -replace '\D', ''
			$cinnum.Text = "$line"
        $port.close()
}
$next_Click = {
            $line = $fwvnum.Text
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
            $port.open()
            $port.WriteLine("SVS_Input_Up`r`n")   
            while (!($line.StartsWith("SVS NEW"))){
			$line = $port.ReadLine()
            $line = $line.Trim()
			}
			$line = $line -replace '\D', ''
			$cinnum.Text = "$line"
        $port.close()
}
$connect_Click = {

    # $form = Show-TemporaryMessage "Scanning for possible SVS Control Modules..." #-duration 3000
	
	# Start-Sleep -Seconds 1
	$comPort = Get-CimInstance Win32_PnPEntity | Where-Object { $_.Caption -like "USB-SERIAL CH340*" } | Select-Object -ExpandProperty Caption -First 1
	# Start-Sleep -Seconds 1
	
	# $form.Close() | Out-Null
	
	if (-not $comPort)
	{
		$null = [System.Windows.Forms.MessageBox]::Show("No SVS Control Module Detected. Please check your USB connection.", "Error", [System.Windows.Forms.MessageBoxButtons]::OK)
		#Exit 1 # No SVS found - no point continuing.
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
			# $fwvnum.Text = "Connected, Checking Firmware Version"
			$comPort = $portNumber
            $comnum.Text = "$portNumber"
			#return $portNumber
		} #else{
        if (($confirm -eq [System.Windows.Forms.DialogResult]::No) -or ($portNumber -eq $null)){
    $form = New-Object System.Windows.Forms.Form
	$form.Text = "Enter SVS COM Port"
	$form.Width = 300
	$form.Height = 150
    $form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
	
	$label = New-Object System.Windows.Forms.Label
	$label.Text = "Enter the COM port number of your SVS:"
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
    $comPort = $TextOutput
    $comnum.Text = "$comPort"
    # return $TextOutput
    $comPorts = [System.IO.Ports.SerialPort]::GetPortNames()

# Specify the COM port you want to check (e.g., "COM1")
$targetComPort = "COM$comPort" 

# Check if the target COM port exists in the list
if ($comPorts -contains $targetComPort) {
    } else {
    [System.Windows.Forms.MessageBox]::Show("Invalid COM Port selected. COM$comPort does not exist", "Error")
    $comPort = $null
            }
        }
    }

    if (-not $comPort) { #Write-Host "Not Port." 
}else{
        try {
        $serialPort = New-Object System.IO.Ports.SerialPort "COM$comPort"
        $serialPort.Open()
        $serialPort.Close()
        $serialPort.Dispose()
        #Write-Host "COM Port '$PortName' is available."
        $fwvnum.Text = "Connected, Checking Firmware Version"
        Current-Firmware
        [int]$global:innumint = $innum.text
        $global:epad = [int] [Math]::Truncate($innumint / 8)# Returns 11 
        [int]$global:slotinterval = $innumint + 1
        [int]$innumintzero = $innumint + 1
        $global:epadir = [int] [Math]::Truncate(250 / $innumintzero)# Returns 11
        
        # Write-Host $epadir 
        # $line = $fwvnum.Text -replace '\D', ''
	    # $firmware_update.Enabled = $true
        # if ($line -gt 111){
	    # $next.Enabled = $true
        # $prev.Enabled = $true
        # $chinputnum.Enabled = $true
        # $TextBox1.Enabled = $true
        # }
        # if ($line -gt 113){
        # $attrbox.Enabled = $true
        # $seeknext.Enabled = $true
        # $seekprev.Enabled = $true
        # }
        # $connect.Enabled = $false
        #  Write-Host $line
        # $connectionstatus = 1
        #return $true
    }
    catch [System.UnauthorizedAccessException] {
        [System.Windows.Forms.MessageBox]::Show("Access Denied. COM$comPort is open in another program.", "Error")
    }
    catch { }
    }
}

$firmware_update_Click = {

		$comPort = $comnum.Text
		$firmwareFile = $firmtextbox.Text
	
	$Form = Show-TemporaryMessage "Flashing firmware..."
	
	Start-Sleep -Milliseconds 500
	Start-Process -FilePath "tools\avrdude\7.2/bin/avrdude" -ArgumentList "-c urclock -p m328p -P COM$comPort -b 115200 -V -D -U flash:w:`"$firmwareFile`":i" -NoNewWindow -Wait
	Start-Sleep -Milliseconds 500
	
	$Form.Close() | Out-Null
    
    $oldfirm = $fwvnum.Text
    Current-Firmware
    if ($oldfirm -eq $fwvnum.Text){
    [System.Windows.Forms.MessageBox]::Show("New Firmware version matches old firmware version. There may have been an error flashing your firmware. Check Command window to see AVRDUDE details.", "Error")
    }else{
	[System.Windows.Forms.MessageBox]::Show("Firmware update completed.", "Success")
    }
    #   $script = $PSScriptRoot+"\SVS_Flash.ps1"
    #   & $script  
}

function Current-Firmware
{
$line = "A"
$Form = Show-TemporaryMessage "Checking Current Firmware Version..."
while (!($line.StartsWith("SVS_FW_"))) {
            # if ($port.IsOpen){
            # $port.close()
            #  Write-Host "closed"
            # Start-Sleep -Seconds 5
            # }
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.DTREnable = "true"
            $port.RTSEnable = "true"
            $port.NewLine                   = "`r"     
            $port.Handshake                 = 1
            $port.ReadTimeout               = 5000
            $port.WriteTimeout              = 2000 
            $port.DiscardNull               = $True
            $port.open()
            #Start-Sleep -Seconds 1
                $line = $port.ReadLine()
                $line = $line.Trim()
                while (!($line.StartsWith("SVS_FW_"))){
			    $line = $port.ReadLine()
                $line = $line.Trim()
			}
                # if (!($line.StartsWith("SVS_FW_"))) {
                #     $line = $port.ReadLine()
                #     $line = $line.Trim()
                #  }
                #  if (!($line.StartsWith("SVS_FW_"))) {
                #     $line = $port.ReadLine()
                #     $line = $line.Trim()
                #  }
                #   if (!($line.StartsWith("SVS_FW_"))) {
                #     $line = $port.ReadLine()
                #     $line = $line.Trim()
                #  }
                $port.close()
				Start-Sleep -Seconds 1
            }
            $cleanedline = $line.Trim() -replace '\x1A', ''
            #$form = Show-TemporaryMessage "Current Firmware Version is: $cleanedline" #-duration 3000
            #Start-Sleep -Seconds 1
            #$form.Close() | Out-Null
			$fwvnum.Text = "$cleanedline"
            $Form.Close()
			$Form = Show-TemporaryMessage "Checking Input Configuration..."
			$port.DtrEnable = $false
            $port.RtsEnable = $false
			$port.open()
            $count = 0
            while (!($line.StartsWith("SVS CURRENT"))){
                $count++
			$line = $port.ReadLine()
            $line = $line.Trim()
            if ($count -gt 10){
                $Form.Close()
                $port.close()
                $Null = [System.Windows.Forms.MessageBox]::Show("Failed to load input information. Your control module may need to be factory reset", "Error")
		        return $null
                }
			}
			$line = $line -replace '\D', ''
			$cinnum.Text = "$line"
			while (!($line.StartsWith("SVS TOTAL"))){
			$line = $port.ReadLine()
                $line = $line.Trim()
			}
			$line = $line -replace '\D', ''
			$innum.Text = "$line"
            Make-AP-List
            Make-IRCODE-List
            
            $vgav3 = 1
            $scartv3 = 1
            
            $port.WriteLine("R0`r`n")                 #Clean intial load
            $cleancheck = $port.ReadLine()
            while ($cleancheck.StartsWith("SVS")){
            $cleancheck = $port.ReadLine()
            }
             $itemnum = 0
        for ($i = 0; $i -le $epad; $i++) {
            [int]$epadbit = $i+670
            $port.WriteLine("R$epadbit`r`n")
            $line = $port.ReadLine()
             $line = $line -replace '\D', ''
             [int]$ebyte = $line
             for ($j = 0; $j -le 7; $j++) {
            $bitValue = ($ebyte -shr $j) -band 1
            try {
            if ($bitValue -eq 0){
            $listnum = $itemnum + 1
            $vgav3 = 0
            }else{
            }
         }catch{}
            $itemnum++
             }
        }
        $itemnum = 0
        for ($i = 0; $i -le $epad; $i++) {
            [int]$epadbit = $i+630
            $port.WriteLine("R$epadbit`r`n")
            $line = $port.ReadLine()
             $line = $line -replace '\D', ''
             [int]$ebyte = $line
             for ($j = 0; $j -le 7; $j++) {
            $bitValue = ($ebyte -shr $j) -band 1
            try {
            if ($bitValue -eq 0){
            $listnum = $itemnum + 1
            $scartv3 = 0
            }else{
            }
         }catch{}
            $itemnum++
             }
        }
        $blank = $port.ReadLine() #clear serial buffer
        # Start-Sleep -Milliseconds 500
        $port.WriteLine("R711`r`n")
        $ytorstatus = $port.ReadLine()
        $ytorstatus = $ytorstatus -replace '\D', ''
        #  Write-Host " ytor $ytorstatus"

        # Start-Sleep -Milliseconds 500
        $port.WriteLine("R710`r`n")
        $rtoystatus = $port.ReadLine()
        $rtoystatus = $rtoystatus -replace '\D', ''
        #  Write-Host "rtoy $rtoystatus"

            $port.close()
            $line = $fwvnum.Text -replace '\D', ''
            $hostmsg = $fwvnum.Text
        if ($line -gt 107){
	    $firmware_update.Enabled = $true
        $connect.Enabled = $false
        }
        $attrbox.Enabled = $false
        $seeknext.Enabled = $false
        $seekprev.Enabled = $false
        $ytorbutton.Enabled = $false
        $rtoybutton.Enabled = $false
        $next.Enabled = $false
        $prev.Enabled = $false
        $chinputnum.Enabled = $false
        $TextBox1.Enabled = $false
        $apributton.Enabled = $false
        $rtosbutton.Enabled = $false
        $syncbbutton.Enabled = $false
        $ireditor.Enabled = $false

         $Form.Close() #| Out-Null

        if ($line -gt 113){
        $attrbox.Enabled = $true
        $seeknext.Enabled = $true
        $seekprev.Enabled = $true
        }else{
        $err111 = 'does not support "YPbPr to RGB" or "RGB to YPbPr" conversion modules, Seek or Attract controls. Advanced Configuration Options, Seek and Attract options have been disabled.'    
        }
        if ($line -gt 111){
	    $next.Enabled = $true
        $prev.Enabled = $true
        $chinputnum.Enabled = $true
        $TextBox1.Enabled = $true
        }else{
            $err111 = "does not support serial controls. All control options have been disabled."
            
        # Write-Host "Firmware Version $hostmsg does not support serial controls. All control options have been disabled. Please update your firmware to access more features."
        }
        if ($line -gt 115){
        $ireditor.Enabled = $true
        }else{
        }
        
        if ($line -gt 116){
        $apributton.Enabled = $true
        if ($scartv3 -eq 1){
        $rtosbutton.Enabled = $true
        $syncbbutton.Enabled = $true
        }
        if ($vgav3 -eq 1){
        $rtosbutton.Enabled = $true
        $syncbbutton.Enabled = $true
        }
        if ($ytorstatus -eq 0){
        $ytorbutton.Enabled = $True
        }
        if ($rtoystatus -eq 0){
        $rtoybutton.Enabled = $True
        }

        }

        if ($line -lt 114){
            $Form.Close()
            [System.Windows.Forms.MessageBox]::Show("Firmware Version $hostmsg $err111 Please update your firmware to access more features.", "Error")
        }
            #  $Form.Close() #| Out-Null
}


function Get-FirmwareFile
{   
	$firmwareFiles = Get-ChildItem -Path "." -Filter "SVS_FW_*.hex" | Sort-Object LastWriteTime -Descending
	
	if ($firmwareFiles.Count -eq 0)
	{
		#$Null = [System.Windows.Forms.MessageBox]::Show("No SVS firmware file found. Please download and place it in the folder.", "Error")
		return $null
	}
	
	$latestFirmware = $firmwareFiles[0].Name
    return $latestFirmware
}


Add-Type -AssemblyName System.Windows.Forms
function Show-TemporaryMessage
{
	param (
		[string]$message,
		[string]$title = "SVS Mangement Utility",
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

$connectionstatus = 0

# $global:epad = 0

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'tools/mgmnt_uitil.designer.ps1')
. (Join-Path $PSScriptRoot 'tools/prioritydialogue.ps1')
. (Join-Path $PSScriptRoot 'tools/ireditor.ps1')
# . (Join-Path $PSScriptRoot 'rgsbdialogue.ps1')

        $seeknext.Enabled = $false
        $seekprev.Enabled = $false
        $chinputnum.Enabled = $false
        $TextBox1.Enabled = $false

$TextBox1.Add_KeyDown({ # Add Enter Key to Change Input Text Box
    param($sender, $e) # $e is of type System.Windows.Forms.KeyEventArgs
    if ($e.KeyCode -eq [System.Windows.Forms.Keys]::Enter) {
         $e.SuppressKeyPress = $true
        &$button9_Click
    }
})


$firmwareFile = Get-FirmwareFile
if (-not $firmwareFile) { 
    $firmtextbox.Text = "Local Firmware File Not Found."
 }else{
    $firmtextbox.Text = "$firmwareFile"
 }

$Main.ShowDialog()


