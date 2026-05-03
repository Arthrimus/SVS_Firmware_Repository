$Main = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$firmware_update = $null
[System.Windows.Forms.Button]$connect = $null
[System.Windows.Forms.Label]$firmver = $null
[System.Windows.Forms.Label]$fwvnum = $null
[System.Windows.Forms.Label]$Label3 = $null
[System.Windows.Forms.Label]$innum = $null
[System.Windows.Forms.Button]$next = $null
[System.Windows.Forms.Button]$prev = $null
[System.Windows.Forms.Label]$comlabel = $null
[System.Windows.Forms.Label]$comnum = $null
[System.Windows.Forms.Label]$cinput = $null
[System.Windows.Forms.Label]$cinnum = $null
[System.Windows.Forms.TextBox]$firmtextbox = $null
[System.Windows.Forms.Button]$browseb = $null
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.CheckBox]$attrbox = $null
[System.Windows.Forms.Button]$rtoybutton = $null
[System.Windows.Forms.Button]$ytorbutton = $null
[System.Windows.Forms.Button]$apributton = $null
[System.Windows.Forms.Button]$rtosbutton = $null
[System.Windows.Forms.Button]$syncbbutton = $null
[System.Windows.Forms.Label]$Label2 = $null
[System.Windows.Forms.TextBox]$TextBox1 = $null
[System.Windows.Forms.Button]$seeknext = $null
[System.Windows.Forms.Button]$seekprev = $null
[System.Windows.Forms.Button]$chinputnum = $null
[System.Windows.Forms.Label]$Label4 = $null
[System.Windows.Forms.Button]$ireditor = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'mgmnt_uitil.resources.ps1')
$firmware_update = (New-Object -TypeName System.Windows.Forms.Button)
$connect = (New-Object -TypeName System.Windows.Forms.Button)
$firmver = (New-Object -TypeName System.Windows.Forms.Label)
$fwvnum = (New-Object -TypeName System.Windows.Forms.Label)
$Label3 = (New-Object -TypeName System.Windows.Forms.Label)
$innum = (New-Object -TypeName System.Windows.Forms.Label)
$next = (New-Object -TypeName System.Windows.Forms.Button)
$prev = (New-Object -TypeName System.Windows.Forms.Button)
$comlabel = (New-Object -TypeName System.Windows.Forms.Label)
$comnum = (New-Object -TypeName System.Windows.Forms.Label)
$cinput = (New-Object -TypeName System.Windows.Forms.Label)
$cinnum = (New-Object -TypeName System.Windows.Forms.Label)
$firmtextbox = (New-Object -TypeName System.Windows.Forms.TextBox)
$browseb = (New-Object -TypeName System.Windows.Forms.Button)
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$attrbox = (New-Object -TypeName System.Windows.Forms.CheckBox)
$rtoybutton = (New-Object -TypeName System.Windows.Forms.Button)
$ytorbutton = (New-Object -TypeName System.Windows.Forms.Button)
$apributton = (New-Object -TypeName System.Windows.Forms.Button)
$rtosbutton = (New-Object -TypeName System.Windows.Forms.Button)
$syncbbutton = (New-Object -TypeName System.Windows.Forms.Button)
$Label2 = (New-Object -TypeName System.Windows.Forms.Label)
$TextBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$seeknext = (New-Object -TypeName System.Windows.Forms.Button)
$seekprev = (New-Object -TypeName System.Windows.Forms.Button)
$chinputnum = (New-Object -TypeName System.Windows.Forms.Button)
$Label4 = (New-Object -TypeName System.Windows.Forms.Label)
$ireditor = (New-Object -TypeName System.Windows.Forms.Button)
$Main.SuspendLayout()
#
#firmware_update
#
$firmware_update.Enabled = $false
$firmware_update.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]497,[System.Int32]254))
$firmware_update.Name = [System.String]'firmware_update'
$firmware_update.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]111,[System.Int32]32))
$firmware_update.TabIndex = [System.Int32]17
$firmware_update.Text = [System.String]'Update Firmware'
$firmware_update.UseVisualStyleBackColor = $true
$firmware_update.add_Click($firmware_update_Click)
#
#connect
#
$connect.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]497,[System.Int32]12))
$connect.Name = [System.String]'connect'
$connect.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]111,[System.Int32]32))
$connect.TabIndex = [System.Int32]1
$connect.Text = [System.String]'Connect SVS'
$connect.UseVisualStyleBackColor = $true
$connect.add_Click($connect_Click)
#
#firmver
#
$firmver.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$firmver.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]17))
$firmver.Name = [System.String]'firmver'
$firmver.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]27))
$firmver.TabIndex = [System.Int32]2
$firmver.Text = [System.String]'Current Firmware Version:'
#
#fwvnum
#
$fwvnum.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$fwvnum.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$fwvnum.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]204,[System.Int32]17))
$fwvnum.Name = [System.String]'fwvnum'
$fwvnum.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]139,[System.Int32]23))
$fwvnum.TabIndex = [System.Int32]3
$fwvnum.Text = [System.String]'Not Connected'
#
#Label3
#
$Label3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]55))
$Label3.Name = [System.String]'Label3'
$Label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]23))
$Label3.TabIndex = [System.Int32]4
$Label3.Text = [System.String]'Total Number of Inputs:'
#
#innum
#
$innum.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$innum.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$innum.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]204,[System.Int32]55))
$innum.Name = [System.String]'innum'
$innum.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]71,[System.Int32]23))
$innum.TabIndex = [System.Int32]5
$innum.Text = [System.String]'N/A'
#
#next
#
$next.Enabled = $false
$next.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]497,[System.Int32]50))
$next.Name = [System.String]'next'
$next.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]111,[System.Int32]32))
$next.TabIndex = [System.Int32]2
$next.Text = [System.String]'Next Input'
$next.UseVisualStyleBackColor = $true
$next.add_Click($next_Click)
#
#prev
#
$prev.Enabled = $false
$prev.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]497,[System.Int32]88))
$prev.Name = [System.String]'prev'
$prev.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]111,[System.Int32]32))
$prev.TabIndex = [System.Int32]3
$prev.Text = [System.String]'Previous Input'
$prev.UseVisualStyleBackColor = $true
$prev.add_Click($prev_Click)
#
#comlabel
#
$comlabel.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$comlabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]550,[System.Int32]289))
$comlabel.Name = [System.String]'comlabel'
$comlabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]58,[System.Int32]20))
$comlabel.TabIndex = [System.Int32]8
$comlabel.Text = [System.String]'COM'
$comlabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#
#comnum
#
$comnum.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]579,[System.Int32]290))
$comnum.Name = [System.String]'comnum'
$comnum.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]19,[System.Int32]17))
$comnum.TabIndex = [System.Int32]9
$comnum.Text = [System.String]'#'
$comnum.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#
#cinput
#
$cinput.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$cinput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]93))
$cinput.Name = [System.String]'cinput'
$cinput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]23))
$cinput.TabIndex = [System.Int32]10
$cinput.Text = [System.String]'Current Active Input:'
#
#cinnum
#
$cinnum.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$cinnum.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$cinnum.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]204,[System.Int32]93))
$cinnum.Name = [System.String]'cinnum'
$cinnum.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]71,[System.Int32]23))
$cinnum.TabIndex = [System.Int32]11
$cinnum.Text = [System.String]'N/A'
#
#firmtextbox
#
$firmtextbox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$firmtextbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]257))
$firmtextbox.Name = [System.String]'firmtextbox'
$firmtextbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]413,[System.Int32]26))
$firmtextbox.TabIndex = [System.Int32]15
$firmtextbox.Text = [System.String]'Checking local files for latest update...'
#
#browseb
#
$browseb.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]435,[System.Int32]254))
$browseb.Name = [System.String]'browseb'
$browseb.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]56,[System.Int32]32))
$browseb.TabIndex = [System.Int32]16
$browseb.Text = [System.String]'Browse'
$browseb.UseVisualStyleBackColor = $true
$browseb.add_Click($browseb_Click)
#
#Label1
#
$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]231))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]184,[System.Int32]23))
$Label1.TabIndex = [System.Int32]14
$Label1.Text = [System.String]'Firmware Update File:'
#
#attrbox
#
$attrbox.Enabled = $false
$attrbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]511,[System.Int32]199))
$attrbox.Name = [System.String]'attrbox'
$attrbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]97,[System.Int32]23))
$attrbox.TabIndex = [System.Int32]6
$attrbox.Text = [System.String]'Attract Mode'
$attrbox.UseVisualStyleBackColor = $true
$attrbox.add_CheckedChanged($attrbox_CheckedChanged)
#
#rtoybutton
#
$rtoybutton.Enabled = $false
$rtoybutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]162))
$rtoybutton.Name = [System.String]'rtoybutton'
$rtoybutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]94,[System.Int32]23))
$rtoybutton.TabIndex = [System.Int32]9
$rtoybutton.Text = [System.String]'RGB to YPbPr'
$rtoybutton.UseVisualStyleBackColor = $true
$rtoybutton.add_Click($rtoybutton_Click)
#
#ytorbutton
#
$ytorbutton.Enabled = $false
$ytorbutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]191))
$ytorbutton.Name = [System.String]'ytorbutton'
$ytorbutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]94,[System.Int32]23))
$ytorbutton.TabIndex = [System.Int32]12
$ytorbutton.Text = [System.String]'YPbPr to RGB'
$ytorbutton.UseVisualStyleBackColor = $true
$ytorbutton.add_Click($ytorbutton_Click)
#
#apributton
#
$apributton.Enabled = $false
$apributton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]213,[System.Int32]162))
$apributton.Name = [System.String]'apributton'
$apributton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]111,[System.Int32]23))
$apributton.TabIndex = [System.Int32]11
$apributton.Text = [System.String]'Auto Profile Priority'
$apributton.UseVisualStyleBackColor = $true
$apributton.add_Click($apributton_Click)
#
#rtosbutton
#
$rtosbutton.Enabled = $false
$rtosbutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]116,[System.Int32]162))
$rtosbutton.Name = [System.String]'rtosbutton'
$rtosbutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]91,[System.Int32]23))
$rtosbutton.TabIndex = [System.Int32]10
$rtosbutton.Text = [System.String]'RGBS to RGsB'
$rtosbutton.UseVisualStyleBackColor = $true
$rtosbutton.add_Click($rtosbutton_Click)
#
#syncbbutton
#
$syncbbutton.Enabled = $false
$syncbbutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]116,[System.Int32]191))
$syncbbutton.Name = [System.String]'syncbbutton'
$syncbbutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]91,[System.Int32]23))
$syncbbutton.TabIndex = [System.Int32]13
$syncbbutton.Text = [System.String]'Sync Bypass'
$syncbbutton.UseVisualStyleBackColor = $true
$syncbbutton.add_Click($syncbbutton_Click)
#
#Label2
#
$Label2.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$Label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]137))
$Label2.Name = [System.String]'Label2'
$Label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]308,[System.Int32]22))
$Label2.TabIndex = [System.Int32]25
$Label2.Text = [System.String]'Advanced Configuration Options:'
#
#TextBox1
#
$TextBox1.Enabled = $false
$TextBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$TextBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]373,[System.Int32]134))
$TextBox1.Name = [System.String]'TextBox1'
$TextBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]109,[System.Int32]21))
$TextBox1.TabIndex = [System.Int32]7
$TextBox1.Text = [System.String]'0'
$TextBox1.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Center
#
#seeknext
#
$seeknext.Enabled = $false
$seeknext.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$seeknext.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]497,[System.Int32]126))
$seeknext.Name = [System.String]'seeknext'
$seeknext.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]111,[System.Int32]31))
$seeknext.TabIndex = [System.Int32]4
$seeknext.Text = [System.String]'Seek Next'
$seeknext.UseVisualStyleBackColor = $true
$seeknext.add_Click($Button7_Click)
#
#seekprev
#
$seekprev.Enabled = $false
$seekprev.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$seekprev.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]497,[System.Int32]162))
$seekprev.Name = [System.String]'seekprev'
$seekprev.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]111,[System.Int32]31))
$seekprev.TabIndex = [System.Int32]5
$seekprev.Text = [System.String]'Seek Previous'
$seekprev.UseVisualStyleBackColor = $true
$seekprev.add_Click($Button8_Click)
#
#chinputnum
#
$chinputnum.Enabled = $false
$chinputnum.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$chinputnum.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]371,[System.Int32]161))
$chinputnum.Name = [System.String]'chinputnum'
$chinputnum.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]111,[System.Int32]32))
$chinputnum.TabIndex = [System.Int32]8
$chinputnum.Text = [System.String]'Change Input'
$chinputnum.UseVisualStyleBackColor = $true
$chinputnum.add_Click($Button9_Click)
#
#Label4
#
$Label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]373,[System.Int32]113))
$Label4.Name = [System.String]'Label4'
$Label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]109,[System.Int32]18))
$Label4.TabIndex = [System.Int32]31
$Label4.Text = [System.String]'Enter Input Number'
$Label4.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#ireditor
#
$ireditor.Enabled = $false
$ireditor.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]213,[System.Int32]191))
$ireditor.Name = [System.String]'ireditor'
$ireditor.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]111,[System.Int32]23))
$ireditor.TabIndex = [System.Int32]14
$ireditor.Text = [System.String]'IR Code Editor'
$ireditor.UseVisualStyleBackColor = $true
$ireditor.add_Click($ireditor_Click)
#
#Main
#
$Main.BackColor = [System.Drawing.SystemColors]::Control
$Main.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]621,[System.Int32]316))
$Main.Controls.Add($ireditor)
$Main.Controls.Add($Label4)
$Main.Controls.Add($chinputnum)
$Main.Controls.Add($seekprev)
$Main.Controls.Add($seeknext)
$Main.Controls.Add($TextBox1)
$Main.Controls.Add($Label2)
$Main.Controls.Add($syncbbutton)
$Main.Controls.Add($rtosbutton)
$Main.Controls.Add($apributton)
$Main.Controls.Add($ytorbutton)
$Main.Controls.Add($rtoybutton)
$Main.Controls.Add($attrbox)
$Main.Controls.Add($Label1)
$Main.Controls.Add($browseb)
$Main.Controls.Add($firmtextbox)
$Main.Controls.Add($cinnum)
$Main.Controls.Add($cinput)
$Main.Controls.Add($comnum)
$Main.Controls.Add($comlabel)
$Main.Controls.Add($prev)
$Main.Controls.Add($next)
$Main.Controls.Add($innum)
$Main.Controls.Add($Label3)
$Main.Controls.Add($fwvnum)
$Main.Controls.Add($firmver)
$Main.Controls.Add($connect)
$Main.Controls.Add($firmware_update)
$Main.ForeColor = [System.Drawing.SystemColors]::ControlText
$Main.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$Main.MaximizeBox = $false
$Main.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]637,[System.Int32]355))
$Main.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]637,[System.Int32]355))
$Main.SizeGripStyle = [System.Windows.Forms.SizeGripStyle]::Hide
$Main.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$Main.Text = [System.String]'SVS Management Utility V1.4'
$Main.ResumeLayout($false)
$Main.PerformLayout()
Add-Member -InputObject $Main -Name firmware_update -Value $firmware_update -MemberType NoteProperty
Add-Member -InputObject $Main -Name connect -Value $connect -MemberType NoteProperty
Add-Member -InputObject $Main -Name firmver -Value $firmver -MemberType NoteProperty
Add-Member -InputObject $Main -Name fwvnum -Value $fwvnum -MemberType NoteProperty
Add-Member -InputObject $Main -Name Label3 -Value $Label3 -MemberType NoteProperty
Add-Member -InputObject $Main -Name innum -Value $innum -MemberType NoteProperty
Add-Member -InputObject $Main -Name next -Value $next -MemberType NoteProperty
Add-Member -InputObject $Main -Name prev -Value $prev -MemberType NoteProperty
Add-Member -InputObject $Main -Name comlabel -Value $comlabel -MemberType NoteProperty
Add-Member -InputObject $Main -Name comnum -Value $comnum -MemberType NoteProperty
Add-Member -InputObject $Main -Name cinput -Value $cinput -MemberType NoteProperty
Add-Member -InputObject $Main -Name cinnum -Value $cinnum -MemberType NoteProperty
Add-Member -InputObject $Main -Name firmtextbox -Value $firmtextbox -MemberType NoteProperty
Add-Member -InputObject $Main -Name browseb -Value $browseb -MemberType NoteProperty
Add-Member -InputObject $Main -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $Main -Name attrbox -Value $attrbox -MemberType NoteProperty
Add-Member -InputObject $Main -Name rtoybutton -Value $rtoybutton -MemberType NoteProperty
Add-Member -InputObject $Main -Name ytorbutton -Value $ytorbutton -MemberType NoteProperty
Add-Member -InputObject $Main -Name apributton -Value $apributton -MemberType NoteProperty
Add-Member -InputObject $Main -Name rtosbutton -Value $rtosbutton -MemberType NoteProperty
Add-Member -InputObject $Main -Name syncbbutton -Value $syncbbutton -MemberType NoteProperty
Add-Member -InputObject $Main -Name Label2 -Value $Label2 -MemberType NoteProperty
Add-Member -InputObject $Main -Name TextBox1 -Value $TextBox1 -MemberType NoteProperty
Add-Member -InputObject $Main -Name seeknext -Value $seeknext -MemberType NoteProperty
Add-Member -InputObject $Main -Name seekprev -Value $seekprev -MemberType NoteProperty
Add-Member -InputObject $Main -Name chinputnum -Value $chinputnum -MemberType NoteProperty
Add-Member -InputObject $Main -Name Label4 -Value $Label4 -MemberType NoteProperty
Add-Member -InputObject $Main -Name ireditor -Value $ireditor -MemberType NoteProperty
}
. InitializeComponent
