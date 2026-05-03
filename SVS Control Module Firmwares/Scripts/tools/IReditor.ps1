$Remotetype_SelectedIndexChanged = {
    MakeRemoteList
}

$slotbutton16_Click = {
    ToggleButtons
    $global:slotindex = 16 
    $slotbutton16.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton16.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton15_Click = {
    ToggleButtons
    $global:slotindex = 15
    $slotbutton15.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton15.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton14_Click = {
    ToggleButtons
    $global:slotindex = 14
    $slotbutton14.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton14.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton13_Click = {
    ToggleButtons
    $global:slotindex = 13
    $slotbutton13.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton13.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton12_Click = {
    ToggleButtons
    $global:slotindex = 12
    $slotbutton12.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton12.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton11_Click = {
    ToggleButtons
    $global:slotindex = 11
    $slotbutton11.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton11.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton10_Click = {
    ToggleButtons
    $global:slotindex = 10
    $slotbutton10.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton10.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton9_Click = {
    ToggleButtons
    $global:slotindex = 9
    $slotbutton9.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton9.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton8_Click = {
    ToggleButtons
    $global:slotindex = 8
    $slotbutton8.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton8.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton7_Click = {
    ToggleButtons
    $global:slotindex = 7
    $slotbutton7.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton7.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton6_Click = {
    ToggleButtons
    $global:slotindex = 6
    $slotbutton6.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton6.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton5_Click = {
    ToggleButtons
    $global:slotindex = 5
    $slotbutton5.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton5.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton4_Click = {
    ToggleButtons
    $global:slotindex = 4
    $slotbutton4.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton4.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton3_Click = {
    ToggleButtons
    $global:slotindex = 3
    $slotbutton3.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton3.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton2_Click = {

    ToggleButtons
    $global:slotindex = 2
    $slotbutton2.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton2.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$slotbutton1_Click = {
    ToggleButtons
    $global:slotindex = 1
    $slotbutton1.BackColor = [System.Drawing.SystemColors]::ControlLight
    $slotbutton1.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
}
$presetclosebutton_Click = {

        $presetbutton.Visible = $true
        $presetclosebutton.Visible = $false
        $ireditorform.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]344,[System.Int32]598))
        $ireditorform.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]344,[System.Int32]598))
        $ireditorform.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]344,[System.Int32]598))
}
$presetbutton_Click = {
        $presetbutton.Visible = $false
        $presetclosebutton.Visible = $true
        $ireditorform.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]573,[System.Int32]598))
        $ireditorform.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]573,[System.Int32]598))
        $ireditorform.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]573,[System.Int32]598))

}
$clrirbutton_Click = {
    $commir1.Text = "FF"
    $commir2.Text = "FF"
    $commir3.Text = "FF"
    $commir4.Text = "FF"
    $commir5.Text = "FF"
    $commir6.Text = "FF"
    $commir7.Text = "FF"
    $commir8.Text = "FF"
    $commir9.Text = "FF"
    $commir10.Text = "FF"
    $commir11.Text = "FF"
    $commir12.Text = "FF"
    $commir13.Text = "FF"
    $commir14.Text = "FF"
    $commir15.Text = "FF"
    $commir16.Text = "FF"
    
    $addir1.Text = "FF"
    $addir2.Text = "FF"
    $addir3.Text = "FF"
    $addir4.Text = "FF"
    $addir5.Text = "FF"
    $addir6.Text = "FF"
    $addir7.Text = "FF"
    $addir8.Text = "FF"
    $addir9.Text = "FF"
    $addir10.Text = "FF"
    $addir11.Text = "FF"
    $addir12.Text = "FF"
    $addir13.Text = "FF"
    $addir13.Text = "FF"
    $addir14.Text = "FF"
    $addir15.Text = "FF"
    $addir16.Text = "FF"
}

$previousbutton_Click = {
       $ireditorform.Hide()
       MakeIRCODEVisible
    if ($slotcount -gt 17){
   $Form = Show-TemporaryMessage "Reading EEPROM Data..."
    [int]$global:slotcount = $slotcount - $slotpagecount - 16
    [int]$global:slotinterval = $slotcount * $slotintadd
    # Write-Host $slotinterval
    $global:pagecount--
    Makeslotvisible 
   
    $Form.close()
            }else{
        $ireditorform.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]344,[System.Int32]598))
        $ireditorform.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]344,[System.Int32]598))
        $ireditorform.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]344,[System.Int32]598))
            }
        $ireditorform.Show()
 
}
$nextbutton_Click = {
    $Form = Show-TemporaryMessage "Reading EEPROM Data..."
    $ireditorform.Hide()
    $global:pagecount++
    # Write-Host $pagecount
    [int]$global:slotinterval = $slotcount * $slotintadd
    MakeIRCODEVisible
    Makeslotvisible 
    $ireditorform.Show()
    $Form.close()
    
}

$upirbutton_Click = {
            $Form = Show-TemporaryMessage "Uploading Configuration to SVS..."
            [int]$inputirnumber = $listBox1.SelectedIndex + 1
            [int]$slotcount = $slotcount - ($slotpagecount + 1)
            [int]$slotpagecount = 0
            # [int]$innumint = $innum.Text
            # [int]$global:slotinterval = $innumint + 1
            $comPort = $comnum.Text
            $baudRate = 9600
            $parity = [System.IO.Ports.Parity]::None
            $dataBits = 8
            $stopBits = [System.IO.Ports.StopBits]::One
            $port = New-Object System.IO.Ports.SerialPort ("COM$comPort", $baudRate, $parity, $dataBits, $stopBits)
            $port.ReadTimeout               = 5000
            $port.open()  

            #SLOT1 Upload
            if ($slotcount -lt $epadir){
            if ($pagecount -eq 1){
             [int]$slotadd = $inputirnumber
            }else{
                [int]$slotadd = $inputirnumber + $slotinterval - $slotintadd
            }
            $adrHex = [System.Convert]::ToInt32($addir1.Text,16)
            $commHex = [System.Convert]::ToInt32($commir1.Text,16)
            $adrHex = "{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            if ($pagecount -eq 1){
             [int]$slotadd = $inputirnumber + 250
            }else{
                [int]$slotadd = $inputirnumber + $slotinterval - $slotintadd + 250
            }
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT2 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir2.Text,16)
            $commHex = [System.Convert]::ToInt32($commir2.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT3 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir3.Text,16)
            $commHex = [System.Convert]::ToInt32($commir3.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT4 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir4.Text,16)
            $commHex = [System.Convert]::ToInt32($commir4.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT5 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir5.Text,16)
            $commHex = [System.Convert]::ToInt32($commir5.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT6 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir6.Text,16)
            $commHex = [System.Convert]::ToInt32($commir6.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT7 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir7.Text,16)
            $commHex = [System.Convert]::ToInt32($commir7.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT8 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir8.Text,16)
            $commHex = [System.Convert]::ToInt32($commir8.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT9 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir9.Text,16)
            $commHex = [System.Convert]::ToInt32($commir9.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT10 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir10.Text,16)
            $commHex = [System.Convert]::ToInt32($commir10.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT11 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir11.Text,16)
            $commHex = [System.Convert]::ToInt32($commir11.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT12 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir12.Text,16)
            $commHex = [System.Convert]::ToInt32($commir12.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT13 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir13.Text,16)
            $commHex = [System.Convert]::ToInt32($commir13.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT14 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir14.Text,16)
            $commHex = [System.Convert]::ToInt32($commir14.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT15 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir15.Text,16)
            $commHex = [System.Convert]::ToInt32($commir15.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }

            # #SLOT16 Upload
            if ($slotcount -lt $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $adrHex = [System.Convert]::ToInt32($addir16.Text,16)
            $commHex = [System.Convert]::ToInt32($commir16.Text,16)
            $adrHex ="{0:D3}" -f $adrHex
            $commHex = "{0:D3}" -f $commHex
            $slotaddStr = "{0:D3}" -f $slotadd

            $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$adrHex$slotaddStr`r`n")     
            Start-Sleep -Milliseconds 50      

            [int]$slotadd = $inputirnumber + $slotinterval + 250
            # $port.WriteLine("`r`n")
            $port.Write("W")
            $port.Write("$commHex$slotadd`r`n")     
            Start-Sleep -Milliseconds 50  
            $slotcount++
            $slotpagecount++
            [int]$slotinterval = $slotcount * $slotintadd
            }
    $Form.close()
     $port.close()
    #  $ireditorform.Hide()
    # MakeIRCODEVisible
    #  $ireditorform.Show()
     
}
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'ireditor.designer.ps1')


           $listBox1.Add_Click({
            
    if ($listBox1.SelectedItem -ne $null) {
            [int]$global:slotcount = 1
            [int]$global:pagecount = 1
            # Write-Host $pagecount
            [int]$global:slotinterval = 0
            # [int]$global:slotinterval = $innumint + 1
            [int]$global:slotintadd = $innumint + 1
            $Form = Show-TemporaryMessage "Reading EEPROM Data..."
            $ireditorform.Hide()
            Makeslotvisible
            $ireditorform.Show()
            $Form.close()
            
    }
    
  })

function Makeslotvisible 
{
             $presetbutton.Visible = $true
             $clrirbutton.Visible = $true
             $listBox1.Visible = $false
             $slotbutton2.Visible = $true
             $commirlabel.Visible = $true
             $iradrlabel.Visible = $true
             $upirbuttonnum = $listBox1.SelectedIndex
             $upirbutton.Text = "Upload Input #$upirbuttonnum IR Codes"
             $upirbutton.Visible = $true
             $previousbutton.Visible = $true
             $nextbutton.Visible = $true
             $global:slotpagecount = 0
            [int]$inputirnumber = $listBox1.SelectedIndex + 1
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

             #SLOT1 VISIBILITY
            if ($slotcount -le $epadir){
            if ($pagecount -eq 1){
             [int]$slotadd = $inputirnumber
            }else{
                [int]$slotadd = $inputirnumber + $slotinterval - $slotintadd
            }
            # Write-Host $slotadd
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir1.Text = $hexString
            if ($pagecount -eq 1){
             [int]$slotadd = $inputirnumber + 250
            }else{
                [int]$slotadd = $inputirnumber + $slotinterval - $slotintadd + 250
            }
            # [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir1.Text = $hexString

            $slotbutton1.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton1.Visible = $true
            $commir1.Visible = $true
            $addir1.Visible = $true
            $comm0x1.Visible = $true
            $adr0x1.Visible = $true
            }
            #SLOT2 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir2.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir2.Text = $hexString

            $slotbutton2.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton2.Visible = $true
            $commir2.Visible = $true
            $addir2.Visible = $true
            $comm0x2.Visible = $true
            $adr0x2.Visible = $true
            }
            
            #SLOT3 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir3.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir3.Text = $hexString

            $slotbutton3.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton3.Visible = $true
            $commir3.Visible = $true
            $addir3.Visible = $true
            $comm0x3.Visible = $true
            $adr0x3.Visible = $true
            }

            #SLOT4 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir4.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir4.Text = $hexString

            $slotbutton4.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton4.Visible = $true
            $commir4.Visible = $true
            $addir4.Visible = $true
            $comm0x4.Visible = $true
            $adr0x4.Visible = $true
            }

            #SLOT5 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir5.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir5.Text = $hexString
            
            $slotbutton5.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton5.Visible = $true
            $commir5.Visible = $true
            $addir5.Visible = $true
            $comm0x5.Visible = $true
            $adr0x5.Visible = $true
            }

            #SLOT6 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir6.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir6.Text = $hexString

            $slotbutton6.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton6.Visible = $true
            $commir6.Visible = $true
            $addir6.Visible = $true
            $comm0x6.Visible = $true
            $adr0x6.Visible = $true
            }

            #SLOT7 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir7.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir7.Text = $hexString

            $slotbutton7.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton7.Visible = $true
            $commir7.Visible = $true
            $addir7.Visible = $true
            $comm0x7.Visible = $true
            $adr0x7.Visible = $true
            }

            #SLOT8 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir8.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir8.Text = $hexString

            $slotbutton8.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton8.Visible = $true
            $commir8.Visible = $true
            $addir8.Visible = $true
            $comm0x8.Visible = $true
            $adr0x8.Visible = $true
            }

            #SLOT9 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir9.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir9.Text = $hexString

            $slotbutton9.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton9.Visible = $true
            $commir9.Visible = $true
            $addir9.Visible = $true
            $comm0x9.Visible = $true
            $adr0x9.Visible = $true
            }

            #SLOT10 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir10.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir10.Text = $hexString

            $slotbutton10.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton10.Visible = $true
            $commir10.Visible = $true
            $addir10.Visible = $true
            $comm0x10.Visible = $true
            $adr0x10.Visible = $true
            }

            #SLOT11 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir11.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir11.Text = $hexString

            $slotbutton11.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton11.Visible = $true
            $commir11.Visible = $true
            $addir11.Visible = $true
            $comm0x11.Visible = $true
            $adr0x11.Visible = $true
            }

            #SLOT12 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir12.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir12.Text = $hexString

            $slotbutton12.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton12.Visible = $true
            $commir12.Visible = $true
            $addir12.Visible = $true
            $comm0x12.Visible = $true
            $adr0x12.Visible = $true
            }

            #SLOT13 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir13.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir13.Text = $hexString

            $slotbutton13.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton13.Visible = $true
            $commir13.Visible = $true
            $addir13.Visible = $true
            $comm0x13.Visible = $true
            $adr0x13.Visible = $true
            }

            #SLOT14 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir14.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir14.Text = $hexString

            $slotbutton14.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton14.Visible = $true
            $commir14.Visible = $true
            $addir14.Visible = $true
            $comm0x14.Visible = $true
            $adr0x14.Visible = $true
            }

            #SLOT15 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir15.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir15.Text = $hexString

            $slotbutton15.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton15.Visible = $true
            $commir15.Visible = $true
            $addir15.Visible = $true
            $comm0x15.Visible = $true
            $adr0x15.Visible = $true
            }

            #SLOT16 VISIBILITY
            if ($slotcount -le $epadir){
            [int]$slotadd = $inputirnumber + $slotinterval
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $addir16.Text = $hexString
            [int]$slotadd = $inputirnumber + $slotinterval + 250
            $port.WriteLine("R$slotadd`r`n")
            [int]$intValue = $port.ReadLine() -replace '\D', ''
            $hexString = $intValue.ToString('X2') # "FF"
            $commir16.Text = $hexString

            $slotbutton16.Text = [System.String]"Slot #$slotcount"
            $slotinterval = $slotcount * $slotintadd
            $global:slotcount++
            $global:slotpagecount++
            $slotbutton16.Visible = $true
            $commir16.Visible = $true
            $addir16.Visible = $true
            $comm0x16.Visible = $true
            $adr0x16.Visible = $true
            }

            if (($epadir - $slotcount) -gt 0){
             $nextbutton.Enabled = $true
            }

            if ($slotcount -gt 17){
                $previousbutton.Text = "<"
            }else{
                $previousbutton.Text = "Exit Editor"
            }

                $previousbutton.Enabled = $true
            # Write-Host $slotpagecount
            #  Write-Host $slotinterval
            $port.close()
            $ireditorform.Show()
}


function MakeIRCODEVisible{
            #  Write-Host $epadir
             $presetbutton.Visible = $false
             $presetclosebutton.Visible = $false
             $clrirbutton.Visible = $false
             $commirlabel.Visible = $false
             $iradrlabel.Visible = $false
             $upirbuttonnum = $listBox1.SelectedIndex
             $upirbutton.Text = "Upload Input #$upirbuttonnum IR Codes"
             $upirbutton.Visible = $false
             $previousbutton.Visible = $false
             $nextbutton.Visible = $false
             $previousbutton.Enabled = $false
             $nextbutton.Enabled = $false


            # SLOT LABEL VISIBILITY
            $slotbutton1.Visible = $false
            $slotbutton2.Visible = $false
            $slotbutton3.Visible = $false
            $slotbutton4.Visible = $false
            $slotbutton5.Visible = $false
            $slotbutton6.Visible = $false
            $slotbutton7.Visible = $false
            $slotbutton8.Visible = $false
            $slotbutton9.Visible = $false
            $slotbutton10.Visible = $false
            $slotbutton11.Visible = $false
            $slotbutton12.Visible = $false
            $slotbutton13.Visible = $false
            $slotbutton14.Visible = $false
            $slotbutton15.Visible = $false
            $slotbutton16.Visible = $false

            # COMMIR VISIBILITY
            $commir1.Visible = $false
            $commir2.Visible = $false
            $commir3.Visible = $false
            $commir4.Visible = $false
            $commir5.Visible = $false
            $commir6.Visible = $false
            $commir7.Visible = $false
            $commir8.Visible = $false
            $commir9.Visible = $false
            $commir10.Visible = $false
            $commir11.Visible = $false
            $commir12.Visible = $false
            $commir13.Visible = $false
            $commir14.Visible = $false
            $commir15.Visible = $false
            $commir16.Visible = $false

            # ADDIR VISIBILITY
            $addir1.Visible = $false
            $addir2.Visible = $false
            $addir3.Visible = $false
            $addir4.Visible = $false
            $addir5.Visible = $false
            $addir6.Visible = $false
            $addir7.Visible = $false
            $addir8.Visible = $false
            $addir9.Visible = $false
            $addir10.Visible = $false
            $addir11.Visible = $false
            $addir12.Visible = $false
            $addir13.Visible = $false
            $addir14.Visible = $false
            $addir15.Visible = $false
            $addir16.Visible = $false


            # COMM0x VISIBILITY
            $comm0x1.Visible = $false
            $comm0x2.Visible = $false
            $comm0x3.Visible = $false
            $comm0x4.Visible = $false
            $comm0x5.Visible = $false
            $comm0x6.Visible = $false
            $comm0x7.Visible = $false
            $comm0x8.Visible = $false
            $comm0x9.Visible = $false
            $comm0x10.Visible = $false
            $comm0x11.Visible = $false
            $comm0x12.Visible = $false
            $comm0x13.Visible = $false
            $comm0x14.Visible = $false
            $comm0x15.Visible = $false
            $comm0x16.Visible = $false

            # ADD0x VISIBILITY
            $adr0x1.Visible = $false
            $adr0x2.Visible = $false
            $adr0x3.Visible = $false
            $adr0x4.Visible = $false
            $adr0x5.Visible = $false
            $adr0x6.Visible = $false
            $adr0x7.Visible = $false
            $adr0x8.Visible = $false
            $adr0x9.Visible = $false
            $adr0x10.Visible = $false
            $adr0x11.Visible = $false
            $adr0x12.Visible = $false
            $adr0x13.Visible = $false
            $adr0x14.Visible = $false
            $adr0x15.Visible = $false
            $adr0x16.Visible = $false

            
            $listBox1.Visible = $true
}
function Make-IRCODE-List
{
    $ListBox1.Items.Clear()
    for ($i = 0; $i -le $innum.Text; $i++) {
                $ListBox1.Items.Add("Input #$i")
             } 
              $Remotetype.SelectedIndex = 0
}

function ToggleButtons {
    $slotbutton1.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton2.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton3.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton4.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton5.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton6.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton7.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton8.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton9.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton10.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton11.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton12.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton13.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton14.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton15.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard
    $slotbutton16.FlatStyle = [System.Windows.Forms.FlatStyle]::Standard

    $slotbutton1.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton2.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton3.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton4.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton5.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton6.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton7.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton8.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton9.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton10.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton11.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton12.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton13.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton14.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton15.BackColor = [System.Drawing.SystemColors]::Control
    $slotbutton16.BackColor = [System.Drawing.SystemColors]::Control
   
}

function MakeRemoteList 
{
    $presetcodelist.Items.Clear()

if ($Remotetype.SelectedIndex -eq 0){  #RT4KPRO

    $presetcodelist.Items.Add("Power") #0x49, 0x1A
    $global:pcindexadr0 = "49"
    $global:pcindexcmd0 = "1A"
    $presetcodelist.Items.Add("INPUT") #0x49, 0x11
    $global:pcindexadr1 = "49"
    $global:pcindexcmd1 = "11"
    $presetcodelist.Items.Add("OUT") #0x49, 0x20
    $global:pcindexadr2 = "49"
    $global:pcindexcmd2 = "20"	
    $presetcodelist.Items.Add("SCL") #0x49, 0x21	
    $global:pcindexadr3 = "49"
    $global:pcindexcmd3 = "21"
    $presetcodelist.Items.Add("SFX") #0x49, 0x22
    $global:pcindexadr4 = "49"
    $global:pcindexcmd4 = "22"	
    $presetcodelist.Items.Add("ADC") #0x49, 0x23	
    $global:pcindexadr5 = "49"
    $global:pcindexcmd5 = "23"
    $presetcodelist.Items.Add("PROF") #0x49, 0x24	
    $global:pcindexadr6 = "49"
    $global:pcindexcmd6 = "24"
    $presetcodelist.Items.Add("Profile 1") #0x49, 0x0B	
    $global:pcindexadr7 = "49"
    $global:pcindexcmd7 = "0B"
    $presetcodelist.Items.Add("Profile 2") #0x49, 0x07	
    $global:pcindexadr8 = "49"
    $global:pcindexcmd8 = "07"
    $presetcodelist.Items.Add("Profile 3") #0x49, 0x03	
    $global:pcindexadr9 = "49"
    $global:pcindexcmd9 = "03"
    $presetcodelist.Items.Add("Profile 4") #0x49, 0x0A	
    $global:pcindexadr10 = "49"
    $global:pcindexcmd10 = "11"
    $presetcodelist.Items.Add("Profile 5") #0x49, 0x06	
    $global:pcindexadr11 = "49"
    $global:pcindexcmd11 = "06"
    $presetcodelist.Items.Add("Profile 6") #0x49, 0x02	
    $global:pcindexadr12 = "49"
    $global:pcindexcmd12 = "02"
    $presetcodelist.Items.Add("Profile 7") #0x49, 0x09
    $global:pcindexadr13 = "49"
    $global:pcindexcmd13 = "09"
    $presetcodelist.Items.Add("Profile 8") #0x49, 0x05	
    $global:pcindexadr14 = "49"
    $global:pcindexcmd14 = "05"
    $presetcodelist.Items.Add("Profile 9") #0x49, 0x01	
    $global:pcindexadr15 = "49"
    $global:pcindexcmd15 = "01"
    $presetcodelist.Items.Add("Profile 10") #0x49, 0x25	
    $global:pcindexadr16 = "49"
    $global:pcindexcmd16 = "25"
    $presetcodelist.Items.Add("Profile 11") #0x49, 0x26	
    $global:pcindexadr17 = "49"
    $global:pcindexcmd17 = "26"
    $presetcodelist.Items.Add("Profile 12") #0x49, 0x27	
    $global:pcindexadr18 = "49"
    $global:pcindexcmd18 = "27"
    $presetcodelist.Items.Add("MENU") #0x49, 0x5C	
    $global:pcindexadr19 = "49"
    $global:pcindexcmd19 = "5C"
    $presetcodelist.Items.Add("BACK") #0x49, 0x42
    $global:pcindexadr20 = "49"
    $global:pcindexcmd20 = "42"
    $presetcodelist.Items.Add("Up") #0x49, 0x18	
    $global:pcindexadr21 = "49"
    $global:pcindexcmd21 = "18"
    $presetcodelist.Items.Add("Left") #0x49, 0x57	
    $global:pcindexadr22 = "49"
    $global:pcindexcmd22 = "57"
    $presetcodelist.Items.Add("Enter") #0x49, 0x53	
    $global:pcindexadr23 = "49"
    $global:pcindexcmd23 = "53"
    $presetcodelist.Items.Add("Right") #0x49, 0x4F	
    $global:pcindexadr24 = "49"
    $global:pcindexcmd24 = "4F"
    $presetcodelist.Items.Add("Down") #0x49, 0x10
    $global:pcindexadr25 = "49"
    $global:pcindexcmd25 = "10"	
    $presetcodelist.Items.Add("DIAG") #0x49, 0x28	
    $global:pcindexadr26 = "49"
    $global:pcindexcmd26 = "28"
    $presetcodelist.Items.Add("STAT") #0x49, 0x29	
    $global:pcindexadr27 = "49"
    $global:pcindexcmd27 = "29"
    $presetcodelist.Items.Add("AUTO-GAIN") #0x49, 0x2B	
    $global:pcindexadr28 = "49"
    $global:pcindexcmd28 = "2B"
    $presetcodelist.Items.Add("AUTO-PHASE") #0x49, 0x2D	
    $global:pcindexadr29 = "49"
    $global:pcindexcmd29 = "2D"
    $presetcodelist.Items.Add("PLAY/PAUSE") #0x49, 0x56	
    $global:pcindexadr30 = "49"
    $global:pcindexcmd30 = "56"
    $presetcodelist.Items.Add("SAFE") #0x49, 0x2E	
    $global:pcindexadr31 = "49"
    $global:pcindexcmd31 = "2E"
    $presetcodelist.Items.Add("SYNC-GEN") #0x49, 0x2C	
    $global:pcindexadr32 = "49"
    $global:pcindexcmd32 = "2C"
    $presetcodelist.Items.Add("SYNC-BUF") #0x49, 0x2F	
    $global:pcindexadr33 = "49"
    $global:pcindexcmd33 = "2F"
    $presetcodelist.Items.Add("4K") #0x49, 0x30
    $global:pcindexadr34 = "49"
    $global:pcindexcmd34 = "30"
    $presetcodelist.Items.Add("1080p") #0x49, 0x31
    $global:pcindexadr35 = "49"
    $global:pcindexcmd35 = "31"
    $presetcodelist.Items.Add("1440p") #0x49, 0x32
    $global:pcindexadr36 = "49"
    $global:pcindexcmd36 = "32"
    $presetcodelist.Items.Add("480p") #0x49, 0x33
    $global:pcindexadr37 = "49"
    $global:pcindexcmd37 = "33"
    $presetcodelist.Items.Add("RES1") #0x49, 0x34
    $global:pcindexadr38 = "49"
    $global:pcindexcmd38 = "34"
    $presetcodelist.Items.Add("RES2") #0x49, 0x35
    $global:pcindexadr39 = "49"
    $global:pcindexcmd39 = "35"
    $presetcodelist.Items.Add("RES3") #0x49, 0x36
    $global:pcindexadr40 = "49"
    $global:pcindexcmd40 = "36"
    $presetcodelist.Items.Add("RES4") #0x49, 0x37
    $global:pcindexadr41 = "49"
    $global:pcindexcmd41 = "37"
    $presetcodelist.Items.Add("AUX1") #0x49, 0x38
    $global:pcindexadr42 = "49"
    $global:pcindexcmd42 = "38"
    $presetcodelist.Items.Add("AUX2") #0x49, 0x39
    $global:pcindexadr43 = "49"
    $global:pcindexcmd43 = "39"
    $presetcodelist.Items.Add("AUX3") #0x49, 0x3A
    $global:pcindexadr44 = "49"
    $global:pcindexcmd44 = "3A"
    $presetcodelist.Items.Add("AUX4") #0x49, 0x3B
    $global:pcindexadr45 = "49"
    $global:pcindexcmd45 = "3B"
    $presetcodelist.Items.Add("AUX5") #0x49, 0x3C
    $global:pcindexadr46 = "49"
    $global:pcindexcmd46 = "3C"
    $presetcodelist.Items.Add("AUX6") #0x49, 0x3D
    $global:pcindexadr47 = "49"
    $global:pcindexcmd47 = "3D"
    $presetcodelist.Items.Add("AUX7") #0x49, 0x3E
    $global:pcindexadr48 = "49"
    $global:pcindexcmd48 = "3E"
    $presetcodelist.Items.Add("AUX8") #0x49, 0x3F
    $global:pcindexadr49 = "49"
    $global:pcindexcmd49 = "3F"

}

if ($Remotetype.SelectedIndex -eq 1){  #RT4KCE
    $presetcodelist.Items.Add("Power") #0x49, 0x1A
    $global:pcindexadr0 = "49"
    $global:pcindexcmd0 = "1A"
    $presetcodelist.Items.Add("INPUT") #0x49, 0x11
    $global:pcindexadr1 = "49"
    $global:pcindexcmd1 = "11"
    $presetcodelist.Items.Add("OUT") #0x49, 0x20
    $global:pcindexadr2 = "49"
    $global:pcindexcmd2 = "20"	
    $presetcodelist.Items.Add("SCALER") #0x49, 0x21	
    $global:pcindexadr3 = "49"
    $global:pcindexcmd3 = "21"
    $presetcodelist.Items.Add("SFX") #0x49, 0x22
    $global:pcindexadr4 = "49"
    $global:pcindexcmd4 = "22"	
    $presetcodelist.Items.Add("ADC") #0x49, 0x23	
    $global:pcindexadr5 = "49"
    $global:pcindexcmd5 = "23"
    $presetcodelist.Items.Add("PROF") #0x49, 0x24	
    $global:pcindexadr6 = "49"
    $global:pcindexcmd6 = "24"
    $presetcodelist.Items.Add("Profile 1") #0x49, 0x0B	
    $global:pcindexadr7 = "49"
    $global:pcindexcmd7 = "0B"
    $presetcodelist.Items.Add("Profile 2") #0x49, 0x07	
    $global:pcindexadr8 = "49"
    $global:pcindexcmd8 = "07"
    $presetcodelist.Items.Add("Profile 3") #0x49, 0x03	
    $global:pcindexadr9 = "49"
    $global:pcindexcmd9 = "03"
    $presetcodelist.Items.Add("Profile 4") #0x49, 0x0A	
    $global:pcindexadr10 = "49"
    $global:pcindexcmd10 = "11"
    $presetcodelist.Items.Add("Profile 5") #0x49, 0x06	
    $global:pcindexadr11 = "49"
    $global:pcindexcmd11 = "06"
    $presetcodelist.Items.Add("Profile 6") #0x49, 0x02	
    $global:pcindexadr12 = "49"
    $global:pcindexcmd12 = "02"
    $presetcodelist.Items.Add("Profile 7") #0x49, 0x09
    $global:pcindexadr13 = "49"
    $global:pcindexcmd13 = "09"
    $presetcodelist.Items.Add("Profile 8") #0x49, 0x05	
    $global:pcindexadr14 = "49"
    $global:pcindexcmd14 = "05"
    $presetcodelist.Items.Add("Profile 9") #0x49, 0x01	
    $global:pcindexadr15 = "49"
    $global:pcindexcmd15 = "01"
    $presetcodelist.Items.Add("Profile 10") #0x49, 0x25	
    $global:pcindexadr16 = "49"
    $global:pcindexcmd16 = "25"
    $presetcodelist.Items.Add("Profile 11") #0x49, 0x26	
    $global:pcindexadr17 = "49"
    $global:pcindexcmd17 = "26"
    $presetcodelist.Items.Add("Profile 12") #0x49, 0x27	
    $global:pcindexadr18 = "49"
    $global:pcindexcmd18 = "27"
    $presetcodelist.Items.Add("MENU") #0x49, 0x5C	
    $global:pcindexadr19 = "49"
    $global:pcindexcmd19 = "5C"
    $presetcodelist.Items.Add("BACK") #0x49, 0x42
    $global:pcindexadr20 = "49"
    $global:pcindexcmd20 = "42"
    $presetcodelist.Items.Add("Up") #0x49, 0x18	
    $global:pcindexadr21 = "49"
    $global:pcindexcmd21 = "18"
    $presetcodelist.Items.Add("Left") #0x49, 0x57	
    $global:pcindexadr22 = "49"
    $global:pcindexcmd22 = "57"
    $presetcodelist.Items.Add("Enter") #0x49, 0x53	
    $global:pcindexadr23 = "49"
    $global:pcindexcmd23 = "53"
    $presetcodelist.Items.Add("Right") #0x49, 0x4F	
    $global:pcindexadr24 = "49"
    $global:pcindexcmd24 = "4F"
    $presetcodelist.Items.Add("Down") #0x49, 0x10
    $global:pcindexadr25 = "49"
    $global:pcindexcmd25 = "10"	
    $presetcodelist.Items.Add("DIAG") #0x49, 0x28	
    $global:pcindexadr26 = "49"
    $global:pcindexcmd26 = "28"
    $presetcodelist.Items.Add("STAT") #0x49, 0x29	
    $global:pcindexadr27 = "49"
    $global:pcindexcmd27 = "29"
    $presetcodelist.Items.Add("AUTO-GAIN") #0x49, 0x2B	
    $global:pcindexadr28 = "49"
    $global:pcindexcmd28 = "2B"
    $presetcodelist.Items.Add("AUTO-PHASE") #0x49, 0x2D	
    $global:pcindexadr29 = "49"
    $global:pcindexcmd29 = "2D"
    $presetcodelist.Items.Add("AUD") #0x49, 0x61
    $global:pcindexadr30 = "49"
    $global:pcindexcmd30 = "61"
    $presetcodelist.Items.Add("SAFE") #0x49, 0x2E	
    $global:pcindexadr31 = "49"
    $global:pcindexcmd31 = "2E"
    $presetcodelist.Items.Add("SYNC-GEN") #0x49, 0x2C	
    $global:pcindexadr32 = "49"
    $global:pcindexcmd32 = "2C"
    $presetcodelist.Items.Add("SYNC-BUF") #0x49, 0x2F	
    $global:pcindexadr33 = "49"
    $global:pcindexcmd33 = "2F"
    $presetcodelist.Items.Add("4K") #0x49, 0x30
    $global:pcindexadr34 = "49"
    $global:pcindexcmd34 = "30"
    $presetcodelist.Items.Add("1080p") #0x49, 0x31
    $global:pcindexadr35 = "49"
    $global:pcindexcmd35 = "31"
    $presetcodelist.Items.Add("1440p") #0x49, 0x32
    $global:pcindexadr36 = "49"
    $global:pcindexcmd36 = "32"
    $presetcodelist.Items.Add("480p") #0x49, 0x33
    $global:pcindexadr37 = "49"
    $global:pcindexcmd37 = "33"
    $presetcodelist.Items.Add("RES1") #0x49, 0x34
    $global:pcindexadr38 = "49"
    $global:pcindexcmd38 = "34"
    $presetcodelist.Items.Add("RES2") #0x49, 0x35
    $global:pcindexadr39 = "49"
    $global:pcindexcmd39 = "35"
    $presetcodelist.Items.Add("COL") #0x49, 0x60
    $global:pcindexadr40 = "49"
    $global:pcindexcmd38 = "60"
    $presetcodelist.Items.Add("AUX1") #0x49, 0x38
    $global:pcindexadr41 = "49"
    $global:pcindexcmd41 = "38"
    $presetcodelist.Items.Add("AUX2") #0x49, 0x39
    $global:pcindexadr42 = "49"
    $global:pcindexcmd42 = "39"
    $presetcodelist.Items.Add("AUX3") #0x49, 0x3A
    $global:pcindexadr43 = "49"
    $global:pcindexcmd43 = "3A"
    $presetcodelist.Items.Add("AUX4") #0x49, 0x3B
    $global:pcindexadr44 = "49"
    $global:pcindexcmd44 = "3B"
    $presetcodelist.Items.Add("AUX5") #0x49, 0x3C
    $global:pcindexadr45 = "49"
    $global:pcindexcmd45 = "3C"
    $presetcodelist.Items.Add("AUX6") #0x49, 0x3D
    $global:pcindexadr46 = "49"
    $global:pcindexcmd46 = "3D"
    $presetcodelist.Items.Add("AUX7") #0x49, 0x3E
    $global:pcindexadr47 = "49"
    $global:pcindexcmd47 = "3E"
    $presetcodelist.Items.Add("AUX8") #0x49, 0x3F
    $global:pcindexadr48 = "49"
    $global:pcindexcmd48 = "3F"
}

if ($Remotetype.SelectedIndex -eq 2){  #RT5XPRO
    $presetcodelist.Items.Add("Power") #0xB3, 0xDC	
    $global:pcindexadr0 = "B3"
    $global:pcindexcmd0 = "DC"
    $presetcodelist.Items.Add("RGB") #0xB3, 0xB0	
    $global:pcindexadr1 = "B3"
    $global:pcindexcmd1 = "B0"
    $presetcodelist.Items.Add("YPbPr") #0xB3, 0xB1	
    $global:pcindexadr2 = "B3"
    $global:pcindexcmd2 = "B1"
    $presetcodelist.Items.Add("Y/C") #0xB3, 0xB2	
    $global:pcindexadr3 = "B3"
    $global:pcindexcmd3 = "B2"
    $presetcodelist.Items.Add("CV") #0xB3, 0xB3	
    $global:pcindexadr4 = "B3"
    $global:pcindexcmd4 = "B3"
    $presetcodelist.Items.Add("SVC") #0xB3, 0xB4	
    $global:pcindexadr5 = "B3"
    $global:pcindexcmd5 = "B4"
    $presetcodelist.Items.Add("YSD") #0xB3, 0xB5	
    $global:pcindexadr6 = "B3"
    $global:pcindexcmd6 = "B5"
    $presetcodelist.Items.Add("Profile 1") #0xB3, 0x92	
    $global:pcindexadr7 = "B3"
    $global:pcindexcmd7 = "92"
    $presetcodelist.Items.Add("Profile 2") #0xB3, 0x93
    $global:pcindexadr8 = "B3"
    $global:pcindexcmd8 = "93"	
    $presetcodelist.Items.Add("Profile 3") #0xB3, 0xCC	
    $global:pcindexadr9 = "B3"
    $global:pcindexcmd9 = "CC"
    $presetcodelist.Items.Add("Profile 4") #0xB3, 0x8E
    $global:pcindexadr10 = "B3"
    $global:pcindexcmd10 = "8E"	
    $presetcodelist.Items.Add("Profile 5") #0xB3, 0x8F	
    $global:pcindexadr11 = "B3"
    $global:pcindexcmd11 = "8F"
    $presetcodelist.Items.Add("Profile 6") #0xB3, 0xC8	
    $global:pcindexadr12 = "B3"
    $global:pcindexcmd12 = "C8"
    $presetcodelist.Items.Add("Profile 7") #0xB3, 0x8A	
    $global:pcindexadr13 = "B3"
    $global:pcindexcmd13 = "8A"
    $presetcodelist.Items.Add("Profile 8") #0xB3, 0x8B	
    $global:pcindexadr14 = "B3"
    $global:pcindexcmd14 = "8B"
    $presetcodelist.Items.Add("Profile 9") #0xB3, 0xC4	
    $global:pcindexadr15 = "B3"
    $global:pcindexcmd15 = "C4"
    $presetcodelist.Items.Add("Profile 10") #0xB3, 0x87	
    $global:pcindexadr16 = "B3"
    $global:pcindexcmd16 = "87"
    $presetcodelist.Items.Add("LOAD") #0xB3, 0xB6	
    $global:pcindexadr17 = "B3"
    $global:pcindexcmd17 = "B6"
    $presetcodelist.Items.Add("SAVE") #0xB3, 0xB7	
    $global:pcindexadr18 = "B3"
    $global:pcindexcmd18 = "B7"
    $presetcodelist.Items.Add("MENU") #0xB3, 0xE2	
    $global:pcindexadr19 = "B3"
    $global:pcindexcmd19 = "E2"
    $presetcodelist.Items.Add("BACK") #0xB3, 0xC5	
    $global:pcindexadr20 = "B3"
    $global:pcindexcmd20 = "C5"
    $presetcodelist.Items.Add("Up") #0xB3, 0xCA	
    $global:pcindexadr21 = "B3"
    $global:pcindexcmd21 = "CA"
    $presetcodelist.Items.Add("Left") #0xB3, 0x99	
    $global:pcindexadr22 = "B3"
    $global:pcindexcmd22 = "99"
    $presetcodelist.Items.Add("ENTER") #0xB3, 0xCE	
    $global:pcindexadr23 = "B3"
    $global:pcindexcmd23 = "CE"
    $presetcodelist.Items.Add("Right") #0xB3, 0xC1	
    $global:pcindexadr24 = "B3"
    $global:pcindexcmd24 = "C1"
    $presetcodelist.Items.Add("Down") #0xB3, 0xD2	
    $global:pcindexadr25 = "B3"
    $global:pcindexcmd25 = "D2"
    $presetcodelist.Items.Add("ABOUT") #0xB3, 0xB8	
    $global:pcindexadr26 = "B3"
    $global:pcindexcmd26 = "B8"
    $presetcodelist.Items.Add("STAT") #0xB3, 0xB9	
    $global:pcindexadr27 = "B3"
    $global:pcindexcmd27 = "B9"
    $presetcodelist.Items.Add("PHASE +") #0xB3, 0xBA	
    $global:pcindexadr28 = "B3"
    $global:pcindexcmd28 = "BA"
    $presetcodelist.Items.Add("PHASE -") #0xB3, 0xBD	
    $global:pcindexadr29 = "B3"
    $global:pcindexcmd29 = "BD"
    $presetcodelist.Items.Add("PROC") #0xB3, 0xBB	
    $global:pcindexadr30 = "B3"
    $global:pcindexcmd30 = "BB"
    $presetcodelist.Items.Add("SAFE") #0xB3, 0xBE	
    $global:pcindexadr31 = "B3"
    $global:pcindexcmd31 = "BE"
    $presetcodelist.Items.Add("SYNC-LOCK") #0xB3, 0xBC	
    $global:pcindexadr32 = "B3"
    $global:pcindexcmd32 = "BC"
    $presetcodelist.Items.Add("SYNC-BUF") #0xB3, 0xBF	
    $global:pcindexadr33 = "B3"
    $global:pcindexcmd33 = "BF"
    $presetcodelist.Items.Add("1080pO") #0xB3, 0xD0	
    $global:pcindexadr34 = "B3"
    $global:pcindexcmd34 = "D0"
    $presetcodelist.Items.Add("1080pF") #0xB3, 0xD1	
    $global:pcindexadr35 = "B3"
    $global:pcindexcmd35 = "D1"
    $presetcodelist.Items.Add("1080pU") #0xB3, 0xD3
    $global:pcindexadr36 = "B3"
    $global:pcindexcmd36 = "D3"
    $presetcodelist.Items.Add("720p") #0xB3, 0xD4
    $global:pcindexadr37 = "B3"
    $global:pcindexcmd37 = "D4"
    $presetcodelist.Items.Add("1440p2") #0xB3, 0xD5
    $global:pcindexadr38 = "B3"
    $global:pcindexcmd38 = "D5"
    $presetcodelist.Items.Add("1440p1") #0xB3, 0xD6
    $global:pcindexadr39 = "B3"
    $global:pcindexcmd39 = "D6"
    $presetcodelist.Items.Add("240p") #0xB3, 0xD7
    $global:pcindexadr40 = "B3"
    $global:pcindexcmd40 = "D7"
    $presetcodelist.Items.Add("480i") #0xB3, 0xD8
    $global:pcindexadr41 = "B3"
    $global:pcindexcmd41 = "D8"
    $presetcodelist.Items.Add("INPUT") #0xB3, 0xD9
    $global:pcindexadr42 = "B3"
    $global:pcindexcmd42 = "D9"
    $presetcodelist.Items.Add("OUT") #0xB3, 0xDA
    $global:pcindexadr43 = "B3"
    $global:pcindexcmd43 = "DA"
    $presetcodelist.Items.Add("SCL") #0xB3, 0xDB
    $global:pcindexadr44 = "B3"
    $global:pcindexcmd44 = "DB"
    $presetcodelist.Items.Add("INTP") #0xB3, 0xE6
    $global:pcindexadr45 = "B3"
    $global:pcindexcmd45 = "E6"
    $presetcodelist.Items.Add("SAMP") #0xB3, 0xDD
    $global:pcindexadr46 = "B3"
    $global:pcindexcmd46 = "DD"
    $presetcodelist.Items.Add("SDP") #0xB3, 0xDE
    $global:pcindexadr47 = "B3"
    $global:pcindexcmd47 = "DE"
    $presetcodelist.Items.Add("ADC") #0xB3, 0xDF
    $global:pcindexadr48 = "B3"
    $global:pcindexcmd48 = "DF"
    $presetcodelist.Items.Add("HDMI") #0xB3, 0xE0
    $global:pcindexadr49 = "B3"
    $global:pcindexcmd49 = "E0"
    $presetcodelist.Items.Add("AUX1") #0xB3, 0xE1
    $global:pcindexadr50 = "B3"
    $global:pcindexcmd50 = "E1"
    $presetcodelist.Items.Add("AUX2") #0xB3, 0xE5
    $global:pcindexadr51 = "B3"
    $global:pcindexcmd51 = "E5"
    $presetcodelist.Items.Add("AUX3") #0xB3, 0xE3
    $global:pcindexadr52 = "B3"
    $global:pcindexcmd52 = "E3"
    $presetcodelist.Items.Add("AUX4") #0xB3, 0xE4
    $global:pcindexadr53 = "B3"
    $global:pcindexcmd53 = "E4"
}

if ($Remotetype.SelectedIndex -eq 3){ #OSSC
    $presetcodelist.Items.Add("1") #0x3E29	
    $global:pcindexadr0 = "3E"
    $global:pcindexcmd0 = "29"
    $presetcodelist.Items.Add("2") #0x3EA9	
    $global:pcindexadr1 = "3E"
    $global:pcindexcmd1 = "A9"
    $presetcodelist.Items.Add("3") #0x3E69	
    $global:pcindexadr2 = "3E"
    $global:pcindexcmd2 = "69"
    $presetcodelist.Items.Add("4") #0x3EE9
    $global:pcindexadr3 = "3E"
    $global:pcindexcmd3 = "E9"
    $presetcodelist.Items.Add("5") #0x3E19	
    $global:pcindexadr4 = "3E"
    $global:pcindexcmd4 = "19"
    $presetcodelist.Items.Add("6") #0x3E99	
    $global:pcindexadr5 = "3E"
    $global:pcindexcmd5 = "99"
    $presetcodelist.Items.Add("7") #0x3E59	
    $global:pcindexadr6 = "3E"
    $global:pcindexcmd6 = "59"
    $presetcodelist.Items.Add("8") #0x3ED9	
    $global:pcindexadr7 = "3E"
    $global:pcindexcmd7 = "D9"
    $presetcodelist.Items.Add("9") #0x3E39
    $global:pcindexadr8 = "3E"
    $global:pcindexcmd8 = "39"	
    $presetcodelist.Items.Add("0") #0x3EC9
    $global:pcindexadr9 = "3E"
    $global:pcindexcmd9 = "C9"
    $presetcodelist.Items.Add("10+") #0x3EB9 
    $global:pcindexadr10 = "3E"
    $global:pcindexcmd10 = "B9"	
    $presetcodelist.Items.Add("TOGGLE/RETURN") #0x3E79
    $global:pcindexadr11 = "3E"
    $global:pcindexcmd11 = "79"
    $presetcodelist.Items.Add("PIC/CANCEL") #0x3E8D	
    $global:pcindexadr12 = "3E"
    $global:pcindexcmd12 = "8D"
    $presetcodelist.Items.Add("MENU") #0x3E4D
    $global:pcindexadr13 = "3E"
    $global:pcindexcmd13 = "4D"
    $presetcodelist.Items.Add("EXIT") #0x3EED	
    $global:pcindexadr14 = "3E"
    $global:pcindexcmd14 = "ED"
    $presetcodelist.Items.Add("INFO") #0x3E65	
    $global:pcindexadr15 = "3E"
    $global:pcindexcmd15 = "65"
    $presetcodelist.Items.Add("CLOCK, EJECT") #0x3ED1	
    $global:pcindexadr16 = "3E"
    $global:pcindexcmd16 = "D1"
    $presetcodelist.Items.Add("REWIND") #0x3E61	
    $global:pcindexadr17 = "3E"
    $global:pcindexcmd17 = "61"
    $presetcodelist.Items.Add("FORWARD") #0x3EE1	
    $global:pcindexadr18 = "3E"
    $global:pcindexcmd18 = "E1"
    $presetcodelist.Items.Add("L/R") #0x3EB5	
    $global:pcindexadr19 = "3E"
    $global:pcindexcmd19 = "E2"
    $presetcodelist.Items.Add("PAUSE, ZOOM") #0x3EC1	
    $global:pcindexadr20 = "3E"
    $global:pcindexcmd20 = "C1"
    $presetcodelist.Items.Add("CHAPTER-") #0x3E9D
    $global:pcindexadr21 = "3E"
    $global:pcindexcmd21 = "9D"
    $presetcodelist.Items.Add("CHAPTER+") #0x3E5D	
    $global:pcindexadr22 = "3E"
    $global:pcindexcmd22 = "5D"
    $presetcodelist.Items.Add("STOP") #0x3EA1	
    $global:pcindexadr23 = "3E"
    $global:pcindexcmd23 = "A1"
    $presetcodelist.Items.Add("PLAY") #0x3E41	
    $global:pcindexadr24 = "3E"
    $global:pcindexcmd24 = "41"
    $presetcodelist.Items.Add("LEFT") #0x3EAD	
    $global:pcindexadr25 = "3E"
    $global:pcindexcmd25 = "AD"
    $presetcodelist.Items.Add("RIGHT") #0x3E6D	
    $global:pcindexadr26 = "3E"
    $global:pcindexcmd26 = "6D"
    $presetcodelist.Items.Add("UP") #0x3E2D
    $global:pcindexadr27 = "3E"
    $global:pcindexcmd27 = "2D"
    $presetcodelist.Items.Add("DOWN") #0x3ECD	
    $global:pcindexadr28 = "3E"
    $global:pcindexcmd28 = "CD"
    $presetcodelist.Items.Add("OK") #0x3E1D	
    $global:pcindexadr29 = "3E"
    $global:pcindexcmd29 = "1D"
    $presetcodelist.Items.Add("POWER") #0x3E01	
    $global:pcindexadr30 = "3E"
    $global:pcindexcmd30 = "01"
    $presetcodelist.Items.Add("VOL-") #0x1CF0	
    $global:pcindexadr31 = "1C"
    $global:pcindexcmd31 = "F0"
    $presetcodelist.Items.Add("VOL+") #0x1C70	
    $global:pcindexadr32 = "1C"
    $global:pcindexcmd32 = "70"
    $presetcodelist.Items.Add("MUTE") #0x1C18	
    $global:pcindexadr33 = "1C"
    $global:pcindexcmd33 = "18"
    $presetcodelist.Items.Add("CH+") #0x1C50	
    $global:pcindexadr34 = "1C"
    $global:pcindexcmd34 = "50"
    $presetcodelist.Items.Add("CH-") #0x1CD0
    $global:pcindexadr35 = "1C"
    $global:pcindexcmd35 = "D0"
    $presetcodelist.Items.Add("TV/AV") #0x1CC8
    $global:pcindexadr36 = "1C"
    $global:pcindexcmd36 = "C8"
    $presetcodelist.Items.Add("PNS") #0x1C48
    $global:pcindexadr37 = "1C"
    $global:pcindexcmd37 = "48"
    $presetcodelist.Items.Add("TONE-") #0x5ED8
    $global:pcindexadr38 = "5E"
    $global:pcindexcmd38 = "D8"
    $presetcodelist.Items.Add("TONE+") #0x5E58
    $global:pcindexadr39 = "5E"
    $global:pcindexcmd39 = "58"
}

if ($Remotetype.SelectedIndex -eq 4){ #OSSCPRO
    $presetcodelist.Items.Add("Power") #0x0AE8	
    $global:pcindexadr0 = "0A"
    $global:pcindexcmd0 = "E8"
    $presetcodelist.Items.Add("TONE-") #0x0A18	
    $global:pcindexadr1 = "0A"
    $global:pcindexcmd1 = "18"
    $presetcodelist.Items.Add("TONE+") #0x0A98
    $global:pcindexadr2 = "0A"
    $global:pcindexcmd2 = "98"
    $presetcodelist.Items.Add("TV/AV") #0x0A7A	
    $global:pcindexadr3 = "0A"
    $global:pcindexcmd3 = "7A"
    $presetcodelist.Items.Add("MUTE") #0x0AD0	
    $global:pcindexadr4 = "0A"
    $global:pcindexcmd4 = "D0"
    $presetcodelist.Items.Add("PNS") #0x0A50	
    $global:pcindexadr5 = "0A"
    $global:pcindexcmd5 = "50"
    $presetcodelist.Items.Add("CH+") #0x0A48	
    $global:pcindexadr6 = "0A"
    $global:pcindexcmd6 = "48"
    $presetcodelist.Items.Add("CH-") #0x0AA8
    $global:pcindexadr7 = "0A"
    $global:pcindexcmd7 = "A8"
    $presetcodelist.Items.Add("MENU") #0x0ACA
    $global:pcindexadr8 = "0A"
    $global:pcindexcmd8 = "CA"	
    $presetcodelist.Items.Add("L/R") #0x0AC5	
    $global:pcindexadr9 = "0A"
    $global:pcindexcmd9 = "C5"
    $presetcodelist.Items.Add("PIC/CANCEL") #0x0A26
    $global:pcindexadr10 = "0A"
    $global:pcindexcmd10 = "26"	
    $presetcodelist.Items.Add("EXIT") #0x0A26	
    $global:pcindexadr11 = "0A"
    $global:pcindexcmd11 = "26"
    $presetcodelist.Items.Add("LEFT") #0x0ACE	
    $global:pcindexadr12 = "0A"
    $global:pcindexcmd12 = "CE"
    $presetcodelist.Items.Add("RIGHT") #0x0A4E	
    $global:pcindexadr13 = "0A"
    $global:pcindexcmd13 = "4E"
    $presetcodelist.Items.Add("UP") #0x0A0E	
    $global:pcindexadr14 = "0A"
    $global:pcindexcmd14 = "0E"
    $presetcodelist.Items.Add("DOWN") #0x0A8E	
    $global:pcindexadr15 = "0A"
    $global:pcindexcmd15 = "8E"
    $presetcodelist.Items.Add("OK") #0x0ACC	
    $global:pcindexadr16 = "0A"
    $global:pcindexcmd16 = "CC"
    $presetcodelist.Items.Add("INFO") #0x0A08	
    $global:pcindexadr17 = "0A"
    $global:pcindexcmd17 = "08"
    $presetcodelist.Items.Add("PAUSE") #0x0A32	
    $global:pcindexadr18 = "0A"
    $global:pcindexcmd18 = "32"
    $presetcodelist.Items.Add("PLAY") #0x0AA2	
    $global:pcindexadr19 = "0A"
    $global:pcindexcmd19 = "A2"
    $presetcodelist.Items.Add("STOP") #0x0A62	
    $global:pcindexadr20 = "0A"
    $global:pcindexcmd20 = "62"
    $presetcodelist.Items.Add("EJECT") #0x0AE2	
    $global:pcindexadr21 = "0A"
    $global:pcindexcmd21 = "E2"
    $presetcodelist.Items.Add("1") #0x0AB0	
    $global:pcindexadr22 = "0A"
    $global:pcindexcmd22 = "B0"
    $presetcodelist.Items.Add("2") #0x0A70	
    $global:pcindexadr23 = "0A"
    $global:pcindexcmd23 = "70"
    $presetcodelist.Items.Add("3") #0x0AF0	
    $global:pcindexadr24 = "0A"
    $global:pcindexcmd24 = "F0"
    $presetcodelist.Items.Add("4") #0x0A38
    $global:pcindexadr25 = "0A"
    $global:pcindexcmd25 = "38"
    $presetcodelist.Items.Add("5") #0x0AB8	
    $global:pcindexadr26 = "0A"
    $global:pcindexcmd26 = "B8"
    $presetcodelist.Items.Add("6") #0x0A78	
    $global:pcindexadr27 = "0A"
    $global:pcindexcmd27 = "78"
    $presetcodelist.Items.Add("7") #0x0AF8	
    $global:pcindexadr28 = "0A"
    $global:pcindexcmd28 = "F8"
    $presetcodelist.Items.Add("8") #0x0A20	
    $global:pcindexadr29 = "0A"
    $global:pcindexcmd29 = "20"
    $presetcodelist.Items.Add("9") #0xB3, 0xBB	
    $global:pcindexadr30 = "0A"
    $global:pcindexcmd30 = "BB"
    $presetcodelist.Items.Add("0") #0x0A30	
    $global:pcindexadr31 = "0A"
    $global:pcindexcmd31 = "30"
    $presetcodelist.Items.Add("10+") #0x0A88	
    $global:pcindexadr32 = "0A"
    $global:pcindexcmd32 = "88"
    $presetcodelist.Items.Add("TOGGLE/RETURN") #0x0ACC	
    $global:pcindexadr33 = "0A"
    $global:pcindexcmd33 = "CC"
}

}

 $presetcodelist.Add_Click({
        

        if ($presetcodelist.SelectedItem -ne $null) {
            
            # PRESET SELECTED LOGIC--------------------------------------------------------------
            if ($presetcodelist.SelectedIndex -eq 0){
            $outindexadr = $pcindexadr0
            $outindexcmd = $pcindexcmd0
            }
            if ($presetcodelist.SelectedIndex -eq 1){
            $outindexadr = $pcindexadr1
            $outindexcmd = $pcindexcmd1
            }
            if ($presetcodelist.SelectedIndex -eq 2){
            $outindexadr = $pcindexadr2
            $outindexcmd = $pcindexcmd2
            }
            if ($presetcodelist.SelectedIndex -eq 3){
            $outindexadr = $pcindexadr3
            $outindexcmd = $pcindexcmd3
            }
            if ($presetcodelist.SelectedIndex -eq 4){
            $outindexadr = $pcindexadr4
            $outindexcmd = $pcindexcmd4
            }
            if ($presetcodelist.SelectedIndex -eq 5){
            $outindexadr = $pcindexadr5
            $outindexcmd = $pcindexcmd5
            }
            if ($presetcodelist.SelectedIndex -eq 6){
            $outindexadr = $pcindexadr6
            $outindexcmd = $pcindexcmd6
            }
            if ($presetcodelist.SelectedIndex -eq 7){
            $outindexadr = $pcindexadr7
            $outindexcmd = $pcindexcmd7
            }
            if ($presetcodelist.SelectedIndex -eq 8){
            $outindexadr = $pcindexadr8
            $outindexcmd = $pcindexcmd8
            }
            if ($presetcodelist.SelectedIndex -eq 9){
            $outindexadr = $pcindexadr9
            $outindexcmd = $pcindexcmd9
            }
            if ($presetcodelist.SelectedIndex -eq 10){
            $outindexadr = $pcindexadr10
            $outindexcmd = $pcindexcmd10
            }
            if ($presetcodelist.SelectedIndex -eq 11){
            $outindexadr = $pcindexadr11
            $outindexcmd = $pcindexcmd11
            }
            if ($presetcodelist.SelectedIndex -eq 12){
            $outindexadr = $pcindexadr12
            $outindexcmd = $pcindexcmd12
            }
            if ($presetcodelist.SelectedIndex -eq 13){
            $outindexadr = $pcindexadr13
            $outindexcmd = $pcindexcmd13
            }
            if ($presetcodelist.SelectedIndex -eq 14){
            $outindexadr = $pcindexadr14
            $outindexcmd = $pcindexcmd14
            }
            if ($presetcodelist.SelectedIndex -eq 15){
            $outindexadr = $pcindexadr15
            $outindexcmd = $pcindexcmd15
            }
            if ($presetcodelist.SelectedIndex -eq 16){
            $outindexadr = $pcindexadr16
            $outindexcmd = $pcindexcmd16
            }
            if ($presetcodelist.SelectedIndex -eq 17){
            $outindexadr = $pcindexadr17
            $outindexcmd = $pcindexcmd17
            }
            if ($presetcodelist.SelectedIndex -eq 18){
            $outindexadr = $pcindexadr18
            $outindexcmd = $pcindexcmd18
            }
            if ($presetcodelist.SelectedIndex -eq 19){
            $outindexadr = $pcindexadr19
            $outindexcmd = $pcindexcmd19
            }
            if ($presetcodelist.SelectedIndex -eq 20){
            $outindexadr = $pcindexadr20
            $outindexcmd = $pcindexcmd20
            }
            if ($presetcodelist.SelectedIndex -eq 21){
            $outindexadr = $pcindexadr21
            $outindexcmd = $pcindexcmd21
            }
            if ($presetcodelist.SelectedIndex -eq 22){
            $outindexadr = $pcindexadr22
            $outindexcmd = $pcindexcmd22
            }
            if ($presetcodelist.SelectedIndex -eq 23){
            $outindexadr = $pcindexadr23
            $outindexcmd = $pcindexcmd23
            }
            if ($presetcodelist.SelectedIndex -eq 24){
            $outindexadr = $pcindexadr24
            $outindexcmd = $pcindexcmd24
            }
            if ($presetcodelist.SelectedIndex -eq 25){
            $outindexadr = $pcindexadr25
            $outindexcmd = $pcindexcmd25
            }
            if ($presetcodelist.SelectedIndex -eq 26){
            $outindexadr = $pcindexadr26
            $outindexcmd = $pcindexcmd26
            }
            if ($presetcodelist.SelectedIndex -eq 27){
            $outindexadr = $pcindexadr27
            $outindexcmd = $pcindexcmd27
            }
            if ($presetcodelist.SelectedIndex -eq 28){
            $outindexadr = $pcindexadr28
            $outindexcmd = $pcindexcmd28
            }
            if ($presetcodelist.SelectedIndex -eq 29){
            $outindexadr = $pcindexadr29
            $outindexcmd = $pcindexcmd29
            }
            if ($presetcodelist.SelectedIndex -eq 30){
            $outindexadr = $pcindexadr30
            $outindexcmd = $pcindexcmd30
            }
            if ($presetcodelist.SelectedIndex -eq 31){
            $outindexadr = $pcindexadr31
            $outindexcmd = $pcindexcmd31
            }
            if ($presetcodelist.SelectedIndex -eq 32){
            $outindexadr = $pcindexadr32
            $outindexcmd = $pcindexcmd32
            }
            if ($presetcodelist.SelectedIndex -eq 33){
            $outindexadr = $pcindexadr33
            $outindexcmd = $pcindexcmd33
            }
            if ($presetcodelist.SelectedIndex -eq 34){
            $outindexadr = $pcindexadr34
            $outindexcmd = $pcindexcmd34
            }
            if ($presetcodelist.SelectedIndex -eq 35){
            $outindexadr = $pcindexadr35
            $outindexcmd = $pcindexcmd35
            }
            if ($presetcodelist.SelectedIndex -eq 36){
            $outindexadr = $pcindexadr36
            $outindexcmd = $pcindexcmd36
            }
            if ($presetcodelist.SelectedIndex -eq 37){
            $outindexadr = $pcindexadr37
            $outindexcmd = $pcindexcmd37
            }
            if ($presetcodelist.SelectedIndex -eq 38){
            $outindexadr = $pcindexadr38
            $outindexcmd = $pcindexcmd38
            }
            if ($presetcodelist.SelectedIndex -eq 39){
            $outindexadr = $pcindexadr39
            $outindexcmd = $pcindexcmd39
            }
            if ($presetcodelist.SelectedIndex -eq 40){
            $outindexadr = $pcindexadr40
            $outindexcmd = $pcindexcmd40
            }
            if ($presetcodelist.SelectedIndex -eq 41){
            $outindexadr = $pcindexadr41
            $outindexcmd = $pcindexcmd41
            }
            if ($presetcodelist.SelectedIndex -eq 42){
            $outindexadr = $pcindexadr42
            $outindexcmd = $pcindexcmd42
            }
            if ($presetcodelist.SelectedIndex -eq 43){
            $outindexadr = $pcindexadr43
            $outindexcmd = $pcindexcmd43
            }
            if ($presetcodelist.SelectedIndex -eq 44){
            $outindexadr = $pcindexadr44
            $outindexcmd = $pcindexcmd44
            }
            if ($presetcodelist.SelectedIndex -eq 45){
            $outindexadr = $pcindexadr45
            $outindexcmd = $pcindexcmd45
            }
            if ($presetcodelist.SelectedIndex -eq 46){
            $outindexadr = $pcindexadr46
            $outindexcmd = $pcindexcmd46
            }
            if ($presetcodelist.SelectedIndex -eq 47){
            $outindexadr = $pcindexadr47
            $outindexcmd = $pcindexcmd47
            }
            if ($presetcodelist.SelectedIndex -eq 48){
            $outindexadr = $pcindexadr48
            $outindexcmd = $pcindexcmd48
            }
            if ($presetcodelist.SelectedIndex -eq 49){
            $outindexadr = $pcindexadr49
            $outindexcmd = $pcindexcmd49
            }
            if ($presetcodelist.SelectedIndex -eq 50){
            $outindexadr = $pcindexadr50
            $outindexcmd = $pcindexcmd50
            }
            if ($presetcodelist.SelectedIndex -eq 51){
            $outindexadr = $pcindexadr51
            $outindexcmd = $pcindexcmd51
            }
            if ($presetcodelist.SelectedIndex -eq 52){
            $outindexadr = $pcindexadr52
            $outindexcmd = $pcindexcmd52
            }
            if ($presetcodelist.SelectedIndex -eq 53){
            $outindexadr = $pcindexadr53
            $outindexcmd = $pcindexcmd53
            }
            if ($presetcodelist.SelectedIndex -eq 54){
            $outindexadr = $pcindexadr54
            $outindexcmd = $pcindexcmd54
            }
            if ($presetcodelist.SelectedIndex -eq 55){
            $outindexadr = $pcindexadr55
            $outindexcmd = $pcindexcmd55
            }
            if ($presetcodelist.SelectedIndex -eq 56){
            $outindexadr = $pcindexadr56
            $outindexcmd = $pcindexcmd56
            }
            if ($presetcodelist.SelectedIndex -eq 57){
            $outindexadr = $pcindexadr57
            $outindexcmd = $pcindexcmd57
            }
            if ($presetcodelist.SelectedIndex -eq 58){
            $outindexadr = $pcindexadr58
            $outindexcmd = $pcindexcmd58
            }
            if ($presetcodelist.SelectedIndex -eq 59){
            $outindexadr = $pcindexadr59
            $outindexcmd = $pcindexcmd59
            }
        
            


         # OUTPUT SLOT NUMBER LOGIC--------------------------------------------------------------   
        if ($slotindex -eq 1){
            $addir1.Text = $outindexadr
            $commir1.Text = $outindexcmd
        }
        if ($slotindex -eq 2){
            $addir2.Text = $outindexadr
            $commir2.Text = $outindexcmd
        }
        if ($slotindex -eq 3){
            $addir3.Text = $outindexadr
            $commir3.Text = $outindexcmd
        }
        if ($slotindex -eq 4){
            $addir4.Text = $outindexadr
            $commir4.Text = $outindexcmd
        }
        if ($slotindex -eq 5){
            $addir5.Text = $outindexadr
            $commir5.Text = $outindexcmd
        }
        if ($slotindex -eq 6){
            $addir6.Text = $outindexadr
            $commir6.Text = $outindexcmd
        }
        if ($slotindex -eq 7){
            $addir7.Text = $outindexadr
            $commir7.Text = $outindexcmd
        }
        if ($slotindex -eq 8){
            $addir8.Text = $outindexadr
            $commir8.Text = $outindexcmd
        }
        if ($slotindex -eq 9){
            $addir9.Text = $outindexadr
            $commir9.Text = $outindexcmd
        }
        if ($slotindex -eq 10){
            $addir10.Text = $outindexadr
            $commir10.Text = $outindexcmd
        }
        if ($slotindex -eq 11){
            $addir11.Text = $outindexadr
            $commir11.Text = $outindexcmd
        }
        if ($slotindex -eq 12){
            $addir12.Text = $outindexadr
            $commir12.Text = $outindexcmd
        }
        if ($slotindex -eq 13){
            $addir13.Text = $outindexadr
            $commir13.Text = $outindexcmd
        }
        if ($slotindex -eq 14){
            $addir14.Text = $outindexadr
            $commir14.Text = $outindexcmd
        }
        if ($slotindex -eq 15){
            $addir15.Text = $outindexadr
            $commir15.Text = $outindexcmd
        }
        if ($slotindex -eq 16){
            $addir16.Text = $outindexadr
            $commir16.Text = $outindexcmd
        }
    }

 })