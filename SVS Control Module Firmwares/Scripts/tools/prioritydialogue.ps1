$CheckBox1_CheckedChanged = {
    if ($CheckBox1.Checked -eq $true){
        if ($CheckedListBox1.Visible -eq $true){
            for ($i = 0; $i -lt $checkedListBox1.Items.Count; $i++) {
           $checkedListBox1.SetItemChecked($i, $true)
        }
        }
        if ($CheckedListBox2.Visible -eq $true){
            for ($i = 0; $i -lt $checkedListBox2.Items.Count; $i++) {
           $checkedListBox2.SetItemChecked($i, $true)
        }
        }
        if ($CheckedListBox3.Visible -eq $true){
            for ($i = 0; $i -lt $checkedListBox3.Items.Count; $i++) {
           $checkedListBox3.SetItemChecked($i, $true)
        }
        }
        if ($CheckedListBox4.Visible -eq $true){
            for ($i = 0; $i -lt $checkedListBox4.Items.Count; $i++) {
           $checkedListBox4.SetItemChecked($i, $true)
        }
        }
        if ($CheckedListBox5.Visible -eq $true){
            for ($i = 0; $i -lt $checkedListBox5.Items.Count; $i++) {
           $checkedListBox5.SetItemChecked($i, $true)
        }
        }
        
    }
    if ($CheckBox1.Checked -eq $false){
        if ($CheckedListBox1.Visible -eq $true){
            for ($i = 0; $i -lt $checkedListBox1.Items.Count; $i++) {
           $checkedListBox1.SetItemChecked($i, $false)
        }
        }
        if ($CheckedListBox2.Visible -eq $true){
            for ($i = 0; $i -lt $checkedListBox2.Items.Count; $i++) {
           $checkedListBox2.SetItemChecked($i, $false)
        }
        }
        if ($CheckedListBox3.Visible -eq $true){
            for ($i = 0; $i -lt $checkedListBox3.Items.Count; $i++) {
           $checkedListBox3.SetItemChecked($i, $false)
        }
        }
        if ($CheckedListBox4.Visible -eq $true){
            for ($i = 0; $i -lt $checkedListBox4.Items.Count; $i++) {
           $checkedListBox4.SetItemChecked($i, $false)
        }
        }
        if ($CheckedListBox5.Visible -eq $true){
            for ($i = 0; $i -lt $checkedListBox5.Items.Count; $i++) {
           $checkedListBox5.SetItemChecked($i, $false)
        }
        }
    }
}

$apconfirm_Click = {
    Send-AP-Data
}


Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'prioritydialogue.designer.ps1')\

function Make-AP-List
{
    $checkedListBox1.Items.Clear()
    $checkedListBox2.Items.Clear()
    $checkedListBox3.Items.Clear()
    $checkedListBox4.Items.Clear()
    $checkedListBox5.Items.Clear()
     for ($i = 1; $i -le $innum.Text; $i++) {
                $checkedListBox1.Items.Add("Input #$i", $True)
             } 
     for ($i = 1; $i -le $innum.Text; $i++) {
                 $checkedListBox2.Items.Add("Input #$i - Not a V3 SCART or VGA Input", $False)
             } 
     for ($i = 1; $i -le $innum.Text; $i++) {
                 $checkedListBox3.Items.Add("Input #$i  - Not a V3 SCART Input", $False)
             } 
     for ($i = 1; $i -le $innum.Text; $i++) {
                 $checkedListBox4.Items.Add("Input #$i", $False)
             } 
     for ($i = 1; $i -le $innum.Text; $i++) {
                 $checkedListBox5.Items.Add("Input #$i", $False)
             }  
}

function Send-AP-Data
{
            $line = "0"
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
             $port.open()  
             $Form = Show-TemporaryMessage "Uploading Configuration to SVS..."
         
            $ProgressBar1.Minimum = 0
            $ProgressBar1.Maximum = $checkedListBox1.Items.Count - 1 # Set the maximum value for the progress bar   
            

if ($CheckedListBox1.Visible -eq $true){

        $Bitwrite = 0
        $EEPROMADDR = 513
        $Bytewrite = 0

        for ($i = 0; $i -le $checkedListBox1.Items.Count; $i++) {
            try{
             $ProgressBar1.Value = $i
             $checkState = $checkedListBox1.GetItemCheckState($i)
                if ($checkState -eq "Checked") {
                $mask = 1 -shl $Bitwrite # Create a mask
                $Bytewrite = $Bytewrite -bor $mask
                 }else{
                $mask = 1 -shl $Bitwrite # Create a mask
                $negatedMask = -bnot $mask # Negate the mask 
                $Bytewrite = $Bytewrite -band $negatedMask
                }
            }catch{}

        if ($Bitwrite -eq 7){
            $port.WriteLine("`r`n")
            $port.Write("W")
            if ($Bytewrite -lt 10) {
            $port.Write("0")
            }
            if ($Bytewrite -lt 100) {
            $port.Write("0")
            }
            $port.Write("$Bytewrite$EEPROMADDR`r`n")     
            Start-Sleep -Milliseconds 50      
        }
        $Bitwrite++
        if ($Bitwrite -gt 7){
            $Bitwrite = 0
            $EEPROMADDR++
        }
    }
    if ($Bitwrite -lt 7){
        $port.WriteLine("`r`n")
            $port.Write("W")
            if ($Bytewrite -lt 10) {
            $port.Write("0")
            }
            if ($Bytewrite -lt 100) {
            $port.Write("0")
            }
            $port.Write("$Bytewrite$EEPROMADDR`r`n")     
            Start-Sleep -Milliseconds 50      
        }
    

# for ($i = 0; $i -lt $checkedListBox1.Items.Count; $i++) {
#     $itemnum = $i+1
#     $checkState = $checkedListBox1.GetItemCheckState($i)
#      if ($checkState -eq "Checked") {
#     $port.WriteLine("SVS_Priority_ON_$itemnum`r`n") 
#      }else{
#     $port.WriteLine("SVS_Priority_OFF_$itemnum`r`n") 
#      }
#       $ProgressBar1.Value = $i
#      while (!($line.StartsWith("D$itemnum"))){
#         $line = $port.ReadLine()
#             $line = $line.Trim()
#      }
     
#   }
 }
if ($CheckedListBox2.Visible -eq $true){

        $Bitwrite = 0
        $EEPROMADDR = 550
        $Bytewrite = 0

        for ($i = 0; $i -le $checkedListBox2.Items.Count; $i++) {
            try{
            $ProgressBar1.Value = $i
             $checkState = $checkedListBox2.GetItemCheckState($i)
                if ($checkState -eq "Unchecked") {
                $mask = 1 -shl $Bitwrite # Create a mask
                $Bytewrite = $Bytewrite -bor $mask
                 }else{
                $mask = 1 -shl $Bitwrite # Create a mask
                $negatedMask = -bnot $mask # Negate the mask
                $Bytewrite = $Bytewrite -band $negatedMask
                }
               }catch{} 

        if ($Bitwrite -eq 7){
            $port.WriteLine("`r`n")
            $port.Write("W")
            if ($Bytewrite -lt 10) {
            $port.Write("0")
            }
            if ($Bytewrite -lt 100) {
            $port.Write("0")
            }
            $port.Write("$Bytewrite$EEPROMADDR`r`n")     
            Start-Sleep -Milliseconds 50      
        }
        $Bitwrite++
        if ($Bitwrite -gt 7){
            $Bitwrite = 0
            $EEPROMADDR++
        }
    }
    if ($Bitwrite -lt 7){
        $port.WriteLine("`r`n")
            $port.Write("W")
            if ($Bytewrite -lt 10) {
            $port.Write("0")
            }
            if ($Bytewrite -lt 100) {
            $port.Write("0")
            }
            $port.Write("$Bytewrite$EEPROMADDR`r`n")     
            Start-Sleep -Milliseconds 50      
        }

# for ($i = 0; $i -lt $checkedListBox2.Items.Count; $i++) {
#     $itemnum = $i+1
#     $checkState = $checkedListBox2.GetItemCheckState($i)
#      if ($checkState -eq "Checked") {
#     $port.WriteLine("SVS_RGSB_Conversion_ON_$itemnum`r`n") 
#      }else{
#     $port.WriteLine("SVS_RGSB_Conversion_OFF_$itemnum`r`n") 
#      }
#      $ProgressBar1.Value = $i
#      while (!($line.StartsWith("D$itemnum"))){
#         $line = $port.ReadLine()
#             $line = $line.Trim()
#      }
#   }
 }
if ($CheckedListBox3.Visible -eq $true){

        $Bitwrite = 0
        $EEPROMADDR = 590
        $Bytewrite = 0

        for ($i = 0; $i -le $checkedListBox3.Items.Count; $i++) {
            try{
            $ProgressBar1.Value = $i
             $checkState = $checkedListBox3.GetItemCheckState($i)
                if ($checkState -eq "Checked") {
                $mask = 1 -shl $Bitwrite # Create a mask
                $Bytewrite = $Bytewrite -bor $mask
                 }else{
                $mask = 1 -shl $Bitwrite # Create a mask
                $negatedMask = -bnot $mask # Negate the mask (0b11011111)
                $Bytewrite = $Bytewrite -band $negatedMask
                }
            }catch{}

        if ($Bitwrite -eq 7){
            $port.WriteLine("`r`n")
            $port.Write("W")
            if ($Bytewrite -lt 10) {
            $port.Write("0")
            }
            if ($Bytewrite -lt 100) {
            $port.Write("0")
            }
            $port.Write("$Bytewrite$EEPROMADDR`r`n")     
            Start-Sleep -Milliseconds 50      
        }
        $Bitwrite++
        if ($Bitwrite -gt 7){
            $Bitwrite = 0
            $EEPROMADDR++
        }
    }
    if ($Bitwrite -lt 7){
        $port.WriteLine("`r`n")
            $port.Write("W")
            if ($Bytewrite -lt 10) {
            $port.Write("0")
            }
            if ($Bytewrite -lt 100) {
            $port.Write("0")
            }
            $port.Write("$Bytewrite$EEPROMADDR`r`n")     
            Start-Sleep -Milliseconds 50      
        }


# for ($i = 0; $i -lt $checkedListBox3.Items.Count; $i++) {
#     $itemnum = $i+1
#     $checkState = $checkedListBox3.GetItemCheckState($i)
#      if ($checkState -eq "Checked") {
#     $port.WriteLine("SVS_Sync_Bypass_ON_$itemnum`r`n") 
#      }else{
#     $port.WriteLine("SVS_Sync_Bypass_OFF_$itemnum`r`n") 
#      }
#      $ProgressBar1.Value = $i
#      while (!($line.StartsWith("D$itemnum"))){
#         $line = $port.ReadLine()
#             $line = $line.Trim()
#      }
#   }
 }
 if ($CheckedListBox4.Visible -eq $true){
    $port.WriteLine("SVS_Digital_Parallel_OFF`r`n") 
    Start-Sleep -Milliseconds 400
for ($i = 0; $i -lt $checkedListBox4.Items.Count; $i++) {
    $itemnum = $i+1
    $checkState = $checkedListBox4.GetItemCheckState($i)
     if ($checkState -eq "Checked") {
    $port.WriteLine("SVS_Change_Input_$itemnum`r`n") 
    while (!($line.StartsWith("SVS NEW INPUT=$itemnum"))){
        $line = $port.ReadLine()
            $line = $line.Trim()
     }
    $port.WriteLine("SVS_RGB_Comp_ON`r`n") 
     }else{
    $port.WriteLine("SVS_Change_Input_$itemnum`r`n")
    while (!($line.StartsWith("SVS NEW INPUT=$itemnum"))){
        $line = $port.ReadLine()
            $line = $line.Trim()
     }
    $port.WriteLine("SVS_RGB_Comp_OFF`r`n") 
     }
     $ProgressBar1.Value = $i
     Start-Sleep -Milliseconds 50
  }
     $port.WriteLine("SVS_Change_Input_0`r`n") 
 }
 if ($CheckedListBox5.Visible -eq $true){
    $port.WriteLine("SVS_Digital_Parallel_OFF`r`n") 
    Start-Sleep -Milliseconds 400
for ($i = 0; $i -lt $checkedListBox5.Items.Count; $i++) {
    $itemnum = $i+1
    $checkState = $checkedListBox5.GetItemCheckState($i)
     if ($checkState -eq "Checked") {
    $port.WriteLine("SVS_Change_Input_$itemnum`r`n") 
     while (!($line.StartsWith("SVS NEW INPUT=$itemnum"))){
        $line = $port.ReadLine()
            $line = $line.Trim()
     }
    $port.WriteLine("SVS_Comp_RGB_ON`r`n") 
     }else{
    $port.WriteLine("SVS_Change_Input_$itemnum`r`n") 
    while (!($line.StartsWith("SVS NEW INPUT=$itemnum"))){
        $line = $port.ReadLine()
            $line = $line.Trim()
     }
    $port.WriteLine("SVS_Comp_RGB_OFF`r`n") 
     }
     $ProgressBar1.Value = $i
     Start-Sleep -Milliseconds 50
  }
   $port.WriteLine("SVS_Change_Input_0`r`n") 
 }
  $ProgressBar1.Value = 0
  $port.close()
  $Form.close()
}

#$autopropriority.ShowDialog()