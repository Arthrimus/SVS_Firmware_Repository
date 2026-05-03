$autopropriority = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.CheckedListBox]$CheckedListBox1 = $null
[System.Windows.Forms.CheckedListBox]$CheckedListBox2 = $null
[System.Windows.Forms.CheckedListBox]$CheckedListBox3 = $null
[System.Windows.Forms.CheckedListBox]$CheckedListBox4 = $null
[System.Windows.Forms.CheckedListBox]$CheckedListBox5 = $null
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.Button]$apconfirm = $null
[System.Windows.Forms.ProgressBar]$ProgressBar1 = $null
[System.Windows.Forms.CheckBox]$CheckBox1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'prioritydialogue.resources.ps1')
$CheckedListBox1 = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$CheckedListBox2 = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$CheckedListBox3 = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$CheckedListBox4 = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$CheckedListBox5 = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$apconfirm = (New-Object -TypeName System.Windows.Forms.Button)
$ProgressBar1 = (New-Object -TypeName System.Windows.Forms.ProgressBar)
$CheckBox1 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$autopropriority.SuspendLayout()
#
#CheckedListBox1
#
$CheckedListBox1.CheckOnClick = $true
$CheckedListBox1.FormattingEnabled = $true
$CheckedListBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]76))
$CheckedListBox1.Name = [System.String]'CheckedListBox1'
$CheckedListBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]295,[System.Int32]484))
$CheckedListBox1.TabIndex = [System.Int32]4
$CheckedListBox1.ThreeDCheckBoxes = $true
#
#CheckedListBox2
#
$CheckedListBox2.CheckOnClick = $true
$CheckedListBox2.FormattingEnabled = $true
$CheckedListBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]76))
$CheckedListBox2.Name = [System.String]'CheckedListBox2'
$CheckedListBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]295,[System.Int32]484))
$CheckedListBox2.TabIndex = [System.Int32]4
$CheckedListBox2.ThreeDCheckBoxes = $true
#
#CheckedListBox3
#
$CheckedListBox3.CheckOnClick = $true
$CheckedListBox3.FormattingEnabled = $true
$CheckedListBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]76))
$CheckedListBox3.Name = [System.String]'CheckedListBox3'
$CheckedListBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]295,[System.Int32]484))
$CheckedListBox3.TabIndex = [System.Int32]4
$CheckedListBox3.ThreeDCheckBoxes = $true
#
#CheckedListBox4
#
$CheckedListBox4.CheckOnClick = $true
$CheckedListBox4.FormattingEnabled = $true
$CheckedListBox4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]76))
$CheckedListBox4.Name = [System.String]'CheckedListBox4'
$CheckedListBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]295,[System.Int32]484))
$CheckedListBox4.TabIndex = [System.Int32]4
$CheckedListBox4.ThreeDCheckBoxes = $true
#
#CheckedListBox5
#
$CheckedListBox5.CheckOnClick = $true
$CheckedListBox5.FormattingEnabled = $true
$CheckedListBox5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]76))
$CheckedListBox5.Name = [System.String]'CheckedListBox5'
$CheckedListBox5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]295,[System.Int32]484))
$CheckedListBox5.TabIndex = [System.Int32]4
$CheckedListBox5.ThreeDCheckBoxes = $true
#
#Label1
#
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]9))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]289,[System.Int32]32))
$Label1.TabIndex = [System.Int32]5
$Label1.Text = [System.String]'Checked = Auto Profile Priority ON
Unchecked = Auto Profile Priority OFF'
#
#apconfirm
#
$apconfirm.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]566))
$apconfirm.Name = [System.String]'apconfirm'
$apconfirm.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]295,[System.Int32]23))
$apconfirm.TabIndex = [System.Int32]6
$apconfirm.Text = [System.String]'Upload Configuration to SVS'
$apconfirm.UseVisualStyleBackColor = $true
$apconfirm.add_Click($apconfirm_Click)
#
#ProgressBar1
#
$ProgressBar1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]598))
$ProgressBar1.Name = [System.String]'ProgressBar1'
$ProgressBar1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]295,[System.Int32]23))
$ProgressBar1.TabIndex = [System.Int32]7
#
#CheckBox1
#
$CheckBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]49))
$CheckBox1.Name = [System.String]'CheckBox1'
$CheckBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]21))
$CheckBox1.TabIndex = [System.Int32]8
$CheckBox1.Text = [System.String]'Select All'
$CheckBox1.UseVisualStyleBackColor = $true
$CheckBox1.add_CheckedChanged($CheckBox1_CheckedChanged)
#
#autopropriority
#
$autopropriority.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]319,[System.Int32]628))
$autopropriority.Controls.Add($CheckBox1)
$autopropriority.Controls.Add($ProgressBar1)
$autopropriority.Controls.Add($apconfirm)
$autopropriority.Controls.Add($Label1)
$autopropriority.Controls.Add($CheckedListBox1)
$autopropriority.Controls.Add($CheckedListBox2)
$autopropriority.Controls.Add($CheckedListBox3)
$autopropriority.Controls.Add($CheckedListBox4)
$autopropriority.Controls.Add($CheckedListBox5)
$autopropriority.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$autopropriority.MaximizeBox = $false
$autopropriority.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]335,[System.Int32]667))
$autopropriority.MinimizeBox = $false
$autopropriority.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]335,[System.Int32]667))
$autopropriority.SizeGripStyle = [System.Windows.Forms.SizeGripStyle]::Hide
$autopropriority.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterParent
$autopropriority.Text = [System.String]'Auto Profile Priority Configuration'
$autopropriority.ResumeLayout($false)
Add-Member -InputObject $autopropriority -Name CheckedListBox1 -Value $CheckedListBox1 -MemberType NoteProperty
Add-Member -InputObject $autopropriority -Name CheckedListBox2 -Value $CheckedListBox2 -MemberType NoteProperty
Add-Member -InputObject $autopropriority -Name CheckedListBox3 -Value $CheckedListBox3 -MemberType NoteProperty
Add-Member -InputObject $autopropriority -Name CheckedListBox4 -Value $CheckedListBox4 -MemberType NoteProperty
Add-Member -InputObject $autopropriority -Name CheckedListBox5 -Value $CheckedListBox5 -MemberType NoteProperty
Add-Member -InputObject $autopropriority -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $autopropriority -Name apconfirm -Value $apconfirm -MemberType NoteProperty
Add-Member -InputObject $autopropriority -Name ProgressBar1 -Value $ProgressBar1 -MemberType NoteProperty
Add-Member -InputObject $autopropriority -Name CheckBox1 -Value $CheckBox1 -MemberType NoteProperty
}
. InitializeComponent
