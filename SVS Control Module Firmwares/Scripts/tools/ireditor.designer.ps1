$ireditorform = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.ListBox]$ListBox1 = $null
[System.Windows.Forms.TextBox]$addir1 = $null
[System.Windows.Forms.TextBox]$commir1 = $null
[System.Windows.Forms.Label]$iradrlabel = $null
[System.Windows.Forms.Label]$commirlabel = $null
[System.Windows.Forms.TextBox]$addir2 = $null
[System.Windows.Forms.TextBox]$commir2 = $null
[System.Windows.Forms.TextBox]$adr0x1 = $null
[System.Windows.Forms.TextBox]$comm0x1 = $null
[System.Windows.Forms.Button]$upirbutton = $null
[System.Windows.Forms.TextBox]$addir3 = $null
[System.Windows.Forms.TextBox]$addir4 = $null
[System.Windows.Forms.TextBox]$addir5 = $null
[System.Windows.Forms.TextBox]$addir6 = $null
[System.Windows.Forms.TextBox]$addir7 = $null
[System.Windows.Forms.TextBox]$addir8 = $null
[System.Windows.Forms.TextBox]$addir9 = $null
[System.Windows.Forms.Button]$previousbutton = $null
[System.Windows.Forms.Button]$nextbutton = $null
[System.Windows.Forms.TextBox]$addir10 = $null
[System.Windows.Forms.TextBox]$addir11 = $null
[System.Windows.Forms.TextBox]$addir12 = $null
[System.Windows.Forms.TextBox]$addir13 = $null
[System.Windows.Forms.TextBox]$addir14 = $null
[System.Windows.Forms.TextBox]$addir15 = $null
[System.Windows.Forms.TextBox]$addir16 = $null
[System.Windows.Forms.TextBox]$commir3 = $null
[System.Windows.Forms.TextBox]$commir4 = $null
[System.Windows.Forms.TextBox]$commir5 = $null
[System.Windows.Forms.TextBox]$commir6 = $null
[System.Windows.Forms.TextBox]$commir7 = $null
[System.Windows.Forms.TextBox]$commir8 = $null
[System.Windows.Forms.TextBox]$commir9 = $null
[System.Windows.Forms.TextBox]$commir10 = $null
[System.Windows.Forms.TextBox]$commir11 = $null
[System.Windows.Forms.TextBox]$commir12 = $null
[System.Windows.Forms.TextBox]$commir13 = $null
[System.Windows.Forms.TextBox]$commir14 = $null
[System.Windows.Forms.TextBox]$commir15 = $null
[System.Windows.Forms.TextBox]$commir16 = $null
[System.Windows.Forms.TextBox]$adr0x2 = $null
[System.Windows.Forms.TextBox]$adr0x3 = $null
[System.Windows.Forms.TextBox]$adr0x4 = $null
[System.Windows.Forms.TextBox]$adr0x5 = $null
[System.Windows.Forms.TextBox]$adr0x6 = $null
[System.Windows.Forms.TextBox]$adr0x7 = $null
[System.Windows.Forms.TextBox]$adr0x8 = $null
[System.Windows.Forms.TextBox]$adr0x9 = $null
[System.Windows.Forms.TextBox]$adr0x10 = $null
[System.Windows.Forms.TextBox]$adr0x11 = $null
[System.Windows.Forms.TextBox]$adr0x12 = $null
[System.Windows.Forms.TextBox]$adr0x13 = $null
[System.Windows.Forms.TextBox]$adr0x14 = $null
[System.Windows.Forms.TextBox]$adr0x15 = $null
[System.Windows.Forms.TextBox]$adr0x16 = $null
[System.Windows.Forms.TextBox]$comm0x2 = $null
[System.Windows.Forms.TextBox]$comm0x3 = $null
[System.Windows.Forms.TextBox]$comm0x4 = $null
[System.Windows.Forms.TextBox]$comm0x5 = $null
[System.Windows.Forms.TextBox]$comm0x6 = $null
[System.Windows.Forms.TextBox]$comm0x7 = $null
[System.Windows.Forms.TextBox]$comm0x8 = $null
[System.Windows.Forms.TextBox]$comm0x9 = $null
[System.Windows.Forms.TextBox]$comm0x10 = $null
[System.Windows.Forms.TextBox]$comm0x11 = $null
[System.Windows.Forms.TextBox]$comm0x12 = $null
[System.Windows.Forms.TextBox]$comm0x13 = $null
[System.Windows.Forms.TextBox]$comm0x14 = $null
[System.Windows.Forms.TextBox]$comm0x15 = $null
[System.Windows.Forms.TextBox]$comm0x16 = $null
[System.Windows.Forms.Button]$clrirbutton = $null
[System.Windows.Forms.Button]$presetbutton = $null
[System.Windows.Forms.Button]$presetclosebutton = $null
[System.Windows.Forms.Button]$slotbutton1 = $null
[System.Windows.Forms.Button]$slotbutton2 = $null
[System.Windows.Forms.Button]$slotbutton3 = $null
[System.Windows.Forms.Button]$slotbutton4 = $null
[System.Windows.Forms.Button]$slotbutton5 = $null
[System.Windows.Forms.Button]$slotbutton6 = $null
[System.Windows.Forms.Button]$slotbutton7 = $null
[System.Windows.Forms.Button]$slotbutton8 = $null
[System.Windows.Forms.Button]$slotbutton9 = $null
[System.Windows.Forms.Button]$slotbutton10 = $null
[System.Windows.Forms.Button]$slotbutton11 = $null
[System.Windows.Forms.Button]$slotbutton12 = $null
[System.Windows.Forms.Button]$slotbutton13 = $null
[System.Windows.Forms.Button]$slotbutton14 = $null
[System.Windows.Forms.Button]$slotbutton15 = $null
[System.Windows.Forms.Button]$slotbutton16 = $null
[System.Windows.Forms.ComboBox]$Remotetype = $null
[System.Windows.Forms.ListBox]$presetcodelist = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'ireditor.resources.ps1')
$ListBox1 = (New-Object -TypeName System.Windows.Forms.ListBox)
$addir1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$iradrlabel = (New-Object -TypeName System.Windows.Forms.Label)
$commirlabel = (New-Object -TypeName System.Windows.Forms.Label)
$addir2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$upirbutton = (New-Object -TypeName System.Windows.Forms.Button)
$addir3 = (New-Object -TypeName System.Windows.Forms.TextBox)
$addir4 = (New-Object -TypeName System.Windows.Forms.TextBox)
$addir5 = (New-Object -TypeName System.Windows.Forms.TextBox)
$addir6 = (New-Object -TypeName System.Windows.Forms.TextBox)
$addir7 = (New-Object -TypeName System.Windows.Forms.TextBox)
$addir8 = (New-Object -TypeName System.Windows.Forms.TextBox)
$addir9 = (New-Object -TypeName System.Windows.Forms.TextBox)
$previousbutton = (New-Object -TypeName System.Windows.Forms.Button)
$nextbutton = (New-Object -TypeName System.Windows.Forms.Button)
$addir10 = (New-Object -TypeName System.Windows.Forms.TextBox)
$addir11 = (New-Object -TypeName System.Windows.Forms.TextBox)
$addir12 = (New-Object -TypeName System.Windows.Forms.TextBox)
$addir13 = (New-Object -TypeName System.Windows.Forms.TextBox)
$addir14 = (New-Object -TypeName System.Windows.Forms.TextBox)
$addir15 = (New-Object -TypeName System.Windows.Forms.TextBox)
$addir16 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir3 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir4 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir5 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir6 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir7 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir8 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir9 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir10 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir11 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir12 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir13 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir14 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir15 = (New-Object -TypeName System.Windows.Forms.TextBox)
$commir16 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x3 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x4 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x5 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x6 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x7 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x8 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x9 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x10 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x11 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x12 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x13 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x14 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x15 = (New-Object -TypeName System.Windows.Forms.TextBox)
$adr0x16 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x3 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x4 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x5 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x6 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x7 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x8 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x9 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x10 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x11 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x12 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x13 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x14 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x15 = (New-Object -TypeName System.Windows.Forms.TextBox)
$comm0x16 = (New-Object -TypeName System.Windows.Forms.TextBox)
$clrirbutton = (New-Object -TypeName System.Windows.Forms.Button)
$presetbutton = (New-Object -TypeName System.Windows.Forms.Button)
$presetclosebutton = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton1 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton2 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton3 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton4 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton5 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton6 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton7 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton8 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton9 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton10 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton11 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton12 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton13 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton14 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton15 = (New-Object -TypeName System.Windows.Forms.Button)
$slotbutton16 = (New-Object -TypeName System.Windows.Forms.Button)
$Remotetype = (New-Object -TypeName System.Windows.Forms.ComboBox)
$presetcodelist = (New-Object -TypeName System.Windows.Forms.ListBox)
$ireditorform.SuspendLayout()
#
#ListBox1
#
$ListBox1.FormattingEnabled = $true
$ListBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$ListBox1.Name = [System.String]'ListBox1'
$ListBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]304,[System.Int32]537))
$ListBox1.TabIndex = [System.Int32]0
#
#addir1
#
$addir1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]131,[System.Int32]66))
$addir1.MaxLength = [System.Int32]2
$addir1.Name = [System.String]'addir1'
$addir1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$addir1.TabIndex = [System.Int32]2
$addir1.Visible = $false
#
#commir1
#
$commir1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]66))
$commir1.MaxLength = [System.Int32]2
$commir1.Name = [System.String]'commir1'
$commir1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir1.TabIndex = [System.Int32]3
$commir1.Visible = $false
#
#iradrlabel
#
$iradrlabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$iradrlabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]40))
$iradrlabel.Name = [System.String]'iradrlabel'
$iradrlabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]93,[System.Int32]23))
$iradrlabel.TabIndex = [System.Int32]5
$iradrlabel.Text = [System.String]'Address'
$iradrlabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$iradrlabel.Visible = $false
#
#commirlabel
#
$commirlabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$commirlabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]40))
$commirlabel.Name = [System.String]'commirlabel'
$commirlabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]93,[System.Int32]23))
$commirlabel.TabIndex = [System.Int32]6
$commirlabel.Text = [System.String]'Command'
$commirlabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$commirlabel.Visible = $false
#
#addir2
#
$addir2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]131,[System.Int32]93))
$addir2.MaxLength = [System.Int32]2
$addir2.Name = [System.String]'addir2'
$addir2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$addir2.TabIndex = [System.Int32]5
$addir2.Visible = $false
#
#commir2
#
$commir2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]94))
$commir2.MaxLength = [System.Int32]2
$commir2.Name = [System.String]'commir2'
$commir2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir2.TabIndex = [System.Int32]6
$commir2.Visible = $false
#
#adr0x1
#
$adr0x1.Enabled = $false
$adr0x1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]66))
$adr0x1.Name = [System.String]'adr0x1'
$adr0x1.ReadOnly = $true
$adr0x1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x1.TabIndex = [System.Int32]36
$adr0x1.Text = [System.String]'0x'
$adr0x1.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
$adr0x1.Visible = $false
#
#comm0x1
#
$comm0x1.Enabled = $false
$comm0x1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]66))
$comm0x1.Name = [System.String]'comm0x1'
$comm0x1.ReadOnly = $true
$comm0x1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x1.TabIndex = [System.Int32]52
$comm0x1.Text = [System.String]'0x'
$comm0x1.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
$comm0x1.Visible = $false
#
#upirbutton
#
$upirbutton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$upirbutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]9))
$upirbutton.Name = [System.String]'upirbutton'
$upirbutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]267,[System.Int32]28))
$upirbutton.TabIndex = [System.Int32]52
$upirbutton.Text = [System.String]'Upload Input #1 IR Codes'
$upirbutton.UseVisualStyleBackColor = $true
$upirbutton.Visible = $false
$upirbutton.add_Click($upirbutton_Click)
#
#addir3
#
$addir3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]131,[System.Int32]120))
$addir3.MaxLength = [System.Int32]2
$addir3.Name = [System.String]'addir3'
$addir3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$addir3.TabIndex = [System.Int32]8
#
#addir4
#
$addir4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]147))
$addir4.MaxLength = [System.Int32]2
$addir4.Name = [System.String]'addir4'
$addir4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir4.TabIndex = [System.Int32]11
#
#addir5
#
$addir5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]174))
$addir5.MaxLength = [System.Int32]2
$addir5.Name = [System.String]'addir5'
$addir5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir5.TabIndex = [System.Int32]14
#
#addir6
#
$addir6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]201))
$addir6.MaxLength = [System.Int32]2
$addir6.Name = [System.String]'addir6'
$addir6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir6.TabIndex = [System.Int32]17
#
#addir7
#
$addir7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]228))
$addir7.MaxLength = [System.Int32]2
$addir7.Name = [System.String]'addir7'
$addir7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir7.TabIndex = [System.Int32]20
#
#addir8
#
$addir8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]255))
$addir8.MaxLength = [System.Int32]2
$addir8.Name = [System.String]'addir8'
$addir8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir8.TabIndex = [System.Int32]23
#
#addir9
#
$addir9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]282))
$addir9.MaxLength = [System.Int32]2
$addir9.Name = [System.String]'addir9'
$addir9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir9.TabIndex = [System.Int32]26
#
#previousbutton
#
$previousbutton.Enabled = $false
$previousbutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]526))
$previousbutton.Name = [System.String]'previousbutton'
$previousbutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]130,[System.Int32]23))
$previousbutton.TabIndex = [System.Int32]50
$previousbutton.Text = [System.String]'<'
$previousbutton.UseVisualStyleBackColor = $true
$previousbutton.add_Click($previousbutton_Click)
#
#nextbutton
#
$nextbutton.Enabled = $false
$nextbutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]149,[System.Int32]526))
$nextbutton.Name = [System.String]'nextbutton'
$nextbutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]130,[System.Int32]23))
$nextbutton.TabIndex = [System.Int32]51
$nextbutton.Text = [System.String]'>'
$nextbutton.UseVisualStyleBackColor = $true
$nextbutton.add_Click($nextbutton_Click)
#
#addir10
#
$addir10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]309))
$addir10.MaxLength = [System.Int32]2
$addir10.Name = [System.String]'addir10'
$addir10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir10.TabIndex = [System.Int32]29
#
#addir11
#
$addir11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]336))
$addir11.MaxLength = [System.Int32]2
$addir11.Name = [System.String]'addir11'
$addir11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir11.TabIndex = [System.Int32]32
#
#addir12
#
$addir12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]363))
$addir12.MaxLength = [System.Int32]2
$addir12.Name = [System.String]'addir12'
$addir12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir12.TabIndex = [System.Int32]35
#
#addir13
#
$addir13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]390))
$addir13.MaxLength = [System.Int32]2
$addir13.Name = [System.String]'addir13'
$addir13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir13.TabIndex = [System.Int32]38
#
#addir14
#
$addir14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]417))
$addir14.MaxLength = [System.Int32]2
$addir14.Name = [System.String]'addir14'
$addir14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir14.TabIndex = [System.Int32]41
#
#addir15
#
$addir15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]444))
$addir15.MaxLength = [System.Int32]2
$addir15.Name = [System.String]'addir15'
$addir15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir15.TabIndex = [System.Int32]44
#
#addir16
#
$addir16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]132,[System.Int32]471))
$addir16.MaxLength = [System.Int32]2
$addir16.Name = [System.String]'addir16'
$addir16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]21))
$addir16.TabIndex = [System.Int32]47
#
#commir3
#
$commir3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]120))
$commir3.MaxLength = [System.Int32]2
$commir3.Name = [System.String]'commir3'
$commir3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir3.TabIndex = [System.Int32]9
#
#commir4
#
$commir4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]147))
$commir4.MaxLength = [System.Int32]2
$commir4.Name = [System.String]'commir4'
$commir4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir4.TabIndex = [System.Int32]12
#
#commir5
#
$commir5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]174))
$commir5.MaxLength = [System.Int32]2
$commir5.Name = [System.String]'commir5'
$commir5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir5.TabIndex = [System.Int32]15
#
#commir6
#
$commir6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]201))
$commir6.MaxLength = [System.Int32]2
$commir6.Name = [System.String]'commir6'
$commir6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir6.TabIndex = [System.Int32]18
#
#commir7
#
$commir7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]228))
$commir7.MaxLength = [System.Int32]2
$commir7.Name = [System.String]'commir7'
$commir7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir7.TabIndex = [System.Int32]21
#
#commir8
#
$commir8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]255))
$commir8.MaxLength = [System.Int32]2
$commir8.Name = [System.String]'commir8'
$commir8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir8.TabIndex = [System.Int32]24
#
#commir9
#
$commir9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]282))
$commir9.MaxLength = [System.Int32]2
$commir9.Name = [System.String]'commir9'
$commir9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir9.TabIndex = [System.Int32]27
#
#commir10
#
$commir10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]309))
$commir10.Name = [System.String]'commir10'
$commir10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir10.TabIndex = [System.Int32]30
#
#commir11
#
$commir11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]336))
$commir11.MaxLength = [System.Int32]2
$commir11.Name = [System.String]'commir11'
$commir11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir11.TabIndex = [System.Int32]33
#
#commir12
#
$commir12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]363))
$commir12.MaxLength = [System.Int32]2
$commir12.Name = [System.String]'commir12'
$commir12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir12.TabIndex = [System.Int32]36
#
#commir13
#
$commir13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]390))
$commir13.MaxLength = [System.Int32]2
$commir13.Name = [System.String]'commir13'
$commir13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir13.TabIndex = [System.Int32]39
#
#commir14
#
$commir14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]417))
$commir14.MaxLength = [System.Int32]2
$commir14.Name = [System.String]'commir14'
$commir14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir14.TabIndex = [System.Int32]42
#
#commir15
#
$commir15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]444))
$commir15.MaxLength = [System.Int32]2
$commir15.Name = [System.String]'commir15'
$commir15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir15.TabIndex = [System.Int32]45
#
#commir16
#
$commir16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]471))
$commir16.MaxLength = [System.Int32]2
$commir16.Name = [System.String]'commir16'
$commir16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]49,[System.Int32]21))
$commir16.TabIndex = [System.Int32]48
#
#adr0x2
#
$adr0x2.Enabled = $false
$adr0x2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]93))
$adr0x2.Name = [System.String]'adr0x2'
$adr0x2.ReadOnly = $true
$adr0x2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x2.TabIndex = [System.Int32]37
$adr0x2.Text = [System.String]'0x'
$adr0x2.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x3
#
$adr0x3.Enabled = $false
$adr0x3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]120))
$adr0x3.Name = [System.String]'adr0x3'
$adr0x3.ReadOnly = $true
$adr0x3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x3.TabIndex = [System.Int32]38
$adr0x3.Text = [System.String]'0x'
$adr0x3.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x4
#
$adr0x4.Enabled = $false
$adr0x4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]147))
$adr0x4.Name = [System.String]'adr0x4'
$adr0x4.ReadOnly = $true
$adr0x4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x4.TabIndex = [System.Int32]39
$adr0x4.Text = [System.String]'0x'
$adr0x4.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x5
#
$adr0x5.Enabled = $false
$adr0x5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]174))
$adr0x5.Name = [System.String]'adr0x5'
$adr0x5.ReadOnly = $true
$adr0x5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x5.TabIndex = [System.Int32]40
$adr0x5.Text = [System.String]'0x'
$adr0x5.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x6
#
$adr0x6.Enabled = $false
$adr0x6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]201))
$adr0x6.Name = [System.String]'adr0x6'
$adr0x6.ReadOnly = $true
$adr0x6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x6.TabIndex = [System.Int32]41
$adr0x6.Text = [System.String]'0x'
$adr0x6.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x7
#
$adr0x7.Enabled = $false
$adr0x7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]228))
$adr0x7.Name = [System.String]'adr0x7'
$adr0x7.ReadOnly = $true
$adr0x7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x7.TabIndex = [System.Int32]42
$adr0x7.Text = [System.String]'0x'
$adr0x7.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x8
#
$adr0x8.Enabled = $false
$adr0x8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]255))
$adr0x8.Name = [System.String]'adr0x8'
$adr0x8.ReadOnly = $true
$adr0x8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x8.TabIndex = [System.Int32]43
$adr0x8.Text = [System.String]'0x'
$adr0x8.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x9
#
$adr0x9.Enabled = $false
$adr0x9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]282))
$adr0x9.Name = [System.String]'adr0x9'
$adr0x9.ReadOnly = $true
$adr0x9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x9.TabIndex = [System.Int32]44
$adr0x9.Text = [System.String]'0x'
$adr0x9.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x10
#
$adr0x10.Enabled = $false
$adr0x10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]309))
$adr0x10.Name = [System.String]'adr0x10'
$adr0x10.ReadOnly = $true
$adr0x10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x10.TabIndex = [System.Int32]45
$adr0x10.Text = [System.String]'0x'
$adr0x10.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x11
#
$adr0x11.Enabled = $false
$adr0x11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]336))
$adr0x11.Name = [System.String]'adr0x11'
$adr0x11.ReadOnly = $true
$adr0x11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x11.TabIndex = [System.Int32]46
$adr0x11.Text = [System.String]'0x'
$adr0x11.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x12
#
$adr0x12.Enabled = $false
$adr0x12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]363))
$adr0x12.Name = [System.String]'adr0x12'
$adr0x12.ReadOnly = $true
$adr0x12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x12.TabIndex = [System.Int32]47
$adr0x12.Text = [System.String]'0x'
$adr0x12.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x13
#
$adr0x13.Enabled = $false
$adr0x13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]390))
$adr0x13.Name = [System.String]'adr0x13'
$adr0x13.ReadOnly = $true
$adr0x13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x13.TabIndex = [System.Int32]48
$adr0x13.Text = [System.String]'0x'
$adr0x13.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x14
#
$adr0x14.Enabled = $false
$adr0x14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]417))
$adr0x14.Name = [System.String]'adr0x14'
$adr0x14.ReadOnly = $true
$adr0x14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x14.TabIndex = [System.Int32]49
$adr0x14.Text = [System.String]'0x'
$adr0x14.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x15
#
$adr0x15.Enabled = $false
$adr0x15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]444))
$adr0x15.Name = [System.String]'adr0x15'
$adr0x15.ReadOnly = $true
$adr0x15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x15.TabIndex = [System.Int32]50
$adr0x15.Text = [System.String]'0x'
$adr0x15.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#adr0x16
#
$adr0x16.Enabled = $false
$adr0x16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]471))
$adr0x16.Name = [System.String]'adr0x16'
$adr0x16.ReadOnly = $true
$adr0x16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$adr0x16.TabIndex = [System.Int32]51
$adr0x16.Text = [System.String]'0x'
$adr0x16.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x2
#
$comm0x2.Enabled = $false
$comm0x2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]94))
$comm0x2.Name = [System.String]'comm0x2'
$comm0x2.ReadOnly = $true
$comm0x2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x2.TabIndex = [System.Int32]53
$comm0x2.Text = [System.String]'0x'
$comm0x2.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x3
#
$comm0x3.Enabled = $false
$comm0x3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]120))
$comm0x3.Name = [System.String]'comm0x3'
$comm0x3.ReadOnly = $true
$comm0x3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x3.TabIndex = [System.Int32]54
$comm0x3.Text = [System.String]'0x'
$comm0x3.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x4
#
$comm0x4.Enabled = $false
$comm0x4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]147))
$comm0x4.Name = [System.String]'comm0x4'
$comm0x4.ReadOnly = $true
$comm0x4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x4.TabIndex = [System.Int32]55
$comm0x4.Text = [System.String]'0x'
$comm0x4.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x5
#
$comm0x5.Enabled = $false
$comm0x5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]174))
$comm0x5.Name = [System.String]'comm0x5'
$comm0x5.ReadOnly = $true
$comm0x5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x5.TabIndex = [System.Int32]56
$comm0x5.Text = [System.String]'0x'
$comm0x5.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x6
#
$comm0x6.Enabled = $false
$comm0x6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]201))
$comm0x6.Name = [System.String]'comm0x6'
$comm0x6.ReadOnly = $true
$comm0x6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x6.TabIndex = [System.Int32]57
$comm0x6.Text = [System.String]'0x'
$comm0x6.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x7
#
$comm0x7.Enabled = $false
$comm0x7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]228))
$comm0x7.Name = [System.String]'comm0x7'
$comm0x7.ReadOnly = $true
$comm0x7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x7.TabIndex = [System.Int32]58
$comm0x7.Text = [System.String]'0x'
$comm0x7.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x8
#
$comm0x8.Enabled = $false
$comm0x8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]255))
$comm0x8.Name = [System.String]'comm0x8'
$comm0x8.ReadOnly = $true
$comm0x8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x8.TabIndex = [System.Int32]59
$comm0x8.Text = [System.String]'0x'
$comm0x8.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x9
#
$comm0x9.Enabled = $false
$comm0x9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]282))
$comm0x9.Name = [System.String]'comm0x9'
$comm0x9.ReadOnly = $true
$comm0x9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x9.TabIndex = [System.Int32]60
$comm0x9.Text = [System.String]'0x'
$comm0x9.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x10
#
$comm0x10.Enabled = $false
$comm0x10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]309))
$comm0x10.Name = [System.String]'comm0x10'
$comm0x10.ReadOnly = $true
$comm0x10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x10.TabIndex = [System.Int32]61
$comm0x10.Text = [System.String]'0x'
$comm0x10.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x11
#
$comm0x11.Enabled = $false
$comm0x11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]336))
$comm0x11.Name = [System.String]'comm0x11'
$comm0x11.ReadOnly = $true
$comm0x11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x11.TabIndex = [System.Int32]62
$comm0x11.Text = [System.String]'0x'
$comm0x11.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x12
#
$comm0x12.Enabled = $false
$comm0x12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]363))
$comm0x12.Name = [System.String]'comm0x12'
$comm0x12.ReadOnly = $true
$comm0x12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x12.TabIndex = [System.Int32]63
$comm0x12.Text = [System.String]'0x'
$comm0x12.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x13
#
$comm0x13.Enabled = $false
$comm0x13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]390))
$comm0x13.Name = [System.String]'comm0x13'
$comm0x13.ReadOnly = $true
$comm0x13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x13.TabIndex = [System.Int32]64
$comm0x13.Text = [System.String]'0x'
$comm0x13.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x14
#
$comm0x14.Enabled = $false
$comm0x14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]417))
$comm0x14.Name = [System.String]'comm0x14'
$comm0x14.ReadOnly = $true
$comm0x14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x14.TabIndex = [System.Int32]65
$comm0x14.Text = [System.String]'0x'
$comm0x14.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x15
#
$comm0x15.Enabled = $false
$comm0x15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]444))
$comm0x15.Name = [System.String]'comm0x15'
$comm0x15.ReadOnly = $true
$comm0x15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x15.TabIndex = [System.Int32]66
$comm0x15.Text = [System.String]'0x'
$comm0x15.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#comm0x16
#
$comm0x16.Enabled = $false
$comm0x16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]186,[System.Int32]471))
$comm0x16.Name = [System.String]'comm0x16'
$comm0x16.ReadOnly = $true
$comm0x16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$comm0x16.TabIndex = [System.Int32]67
$comm0x16.Text = [System.String]'0x'
$comm0x16.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Right
#
#clrirbutton
#
$clrirbutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]500))
$clrirbutton.Name = [System.String]'clrirbutton'
$clrirbutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]267,[System.Int32]23))
$clrirbutton.TabIndex = [System.Int32]49
$clrirbutton.Text = [System.String]'Clear IR Codes'
$clrirbutton.UseVisualStyleBackColor = $true
$clrirbutton.Visible = $false
$clrirbutton.add_Click($clrirbutton_Click)
#
#presetbutton
#
$presetbutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]289,[System.Int32]12))
$presetbutton.Name = [System.String]'presetbutton'
$presetbutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]27,[System.Int32]533))
$presetbutton.TabIndex = [System.Int32]53
$presetbutton.Text = [System.String]'>>

P
R
E
S
E
T
 
I
R

C
O
D
E
S

>>'
$presetbutton.UseVisualStyleBackColor = $true
$presetbutton.Visible = $false
$presetbutton.add_Click($presetbutton_Click)
#
#presetclosebutton
#
$presetclosebutton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$presetclosebutton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]289,[System.Int32]12))
$presetclosebutton.Name = [System.String]'presetclosebutton'
$presetclosebutton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]27,[System.Int32]533))
$presetclosebutton.TabIndex = [System.Int32]54
$presetclosebutton.Text = [System.String]'<<

P
R
E
S
E
T
 
I
R

C
O
D
E
S

<<'
$presetclosebutton.add_Click($presetclosebutton_Click)
#
#slotbutton1
#
$slotbutton1.BackColor = [System.Drawing.SystemColors]::Control
$slotbutton1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]64))
$slotbutton1.Name = [System.String]'slotbutton1'
$slotbutton1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton1.TabIndex = [System.Int32]1
$slotbutton1.UseVisualStyleBackColor = $false
$slotbutton1.add_Click($slotbutton1_Click)
#
#slotbutton2
#
$slotbutton2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]91))
$slotbutton2.Name = [System.String]'slotbutton2'
$slotbutton2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton2.TabIndex = [System.Int32]4
$slotbutton2.Text = [System.String]'Button1'
$slotbutton2.UseVisualStyleBackColor = $true
$slotbutton2.add_Click($slotbutton2_Click)
#
#slotbutton3
#
$slotbutton3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]118))
$slotbutton3.Name = [System.String]'slotbutton3'
$slotbutton3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton3.TabIndex = [System.Int32]7
$slotbutton3.Text = [System.String]'Button2'
$slotbutton3.UseVisualStyleBackColor = $true
$slotbutton3.add_Click($slotbutton3_Click)
#
#slotbutton4
#
$slotbutton4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]145))
$slotbutton4.Name = [System.String]'slotbutton4'
$slotbutton4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton4.TabIndex = [System.Int32]10
$slotbutton4.Text = [System.String]'Button3'
$slotbutton4.UseVisualStyleBackColor = $true
$slotbutton4.add_Click($slotbutton4_Click)
#
#slotbutton5
#
$slotbutton5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]172))
$slotbutton5.Name = [System.String]'slotbutton5'
$slotbutton5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton5.TabIndex = [System.Int32]13
$slotbutton5.Text = [System.String]'Button4'
$slotbutton5.UseVisualStyleBackColor = $true
$slotbutton5.add_Click($slotbutton5_Click)
#
#slotbutton6
#
$slotbutton6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]199))
$slotbutton6.Name = [System.String]'slotbutton6'
$slotbutton6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton6.TabIndex = [System.Int32]16
$slotbutton6.Text = [System.String]'Button5'
$slotbutton6.UseVisualStyleBackColor = $true
$slotbutton6.add_Click($slotbutton6_Click)
#
#slotbutton7
#
$slotbutton7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]228))
$slotbutton7.Name = [System.String]'slotbutton7'
$slotbutton7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton7.TabIndex = [System.Int32]19
$slotbutton7.Text = [System.String]'Button6'
$slotbutton7.UseVisualStyleBackColor = $true
$slotbutton7.add_Click($slotbutton7_Click)
#
#slotbutton8
#
$slotbutton8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]253))
$slotbutton8.Name = [System.String]'slotbutton8'
$slotbutton8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton8.TabIndex = [System.Int32]22
$slotbutton8.Text = [System.String]'Button7'
$slotbutton8.UseVisualStyleBackColor = $true
$slotbutton8.add_Click($slotbutton8_Click)
#
#slotbutton9
#
$slotbutton9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]280))
$slotbutton9.Name = [System.String]'slotbutton9'
$slotbutton9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton9.TabIndex = [System.Int32]25
$slotbutton9.Text = [System.String]'Button8'
$slotbutton9.UseVisualStyleBackColor = $true
$slotbutton9.add_Click($slotbutton9_Click)
#
#slotbutton10
#
$slotbutton10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]307))
$slotbutton10.Name = [System.String]'slotbutton10'
$slotbutton10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton10.TabIndex = [System.Int32]28
$slotbutton10.Text = [System.String]'Button9'
$slotbutton10.UseVisualStyleBackColor = $true
$slotbutton10.add_Click($slotbutton10_Click)
#
#slotbutton11
#
$slotbutton11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]334))
$slotbutton11.Name = [System.String]'slotbutton11'
$slotbutton11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton11.TabIndex = [System.Int32]31
$slotbutton11.Text = [System.String]'Button10'
$slotbutton11.UseVisualStyleBackColor = $true
$slotbutton11.add_Click($slotbutton11_Click)
#
#slotbutton12
#
$slotbutton12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]361))
$slotbutton12.Name = [System.String]'slotbutton12'
$slotbutton12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton12.TabIndex = [System.Int32]34
$slotbutton12.Text = [System.String]'Button11'
$slotbutton12.UseVisualStyleBackColor = $true
$slotbutton12.add_Click($slotbutton12_Click)
#
#slotbutton13
#
$slotbutton13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]388))
$slotbutton13.Name = [System.String]'slotbutton13'
$slotbutton13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton13.TabIndex = [System.Int32]37
$slotbutton13.Text = [System.String]'Button12'
$slotbutton13.UseVisualStyleBackColor = $true
$slotbutton13.add_Click($slotbutton13_Click)
#
#slotbutton14
#
$slotbutton14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]415))
$slotbutton14.Name = [System.String]'slotbutton14'
$slotbutton14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton14.TabIndex = [System.Int32]40
$slotbutton14.Text = [System.String]'Button13'
$slotbutton14.UseVisualStyleBackColor = $true
$slotbutton14.add_Click($slotbutton14_Click)
#
#slotbutton15
#
$slotbutton15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]442))
$slotbutton15.Name = [System.String]'slotbutton15'
$slotbutton15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton15.TabIndex = [System.Int32]43
$slotbutton15.Text = [System.String]'Button14'
$slotbutton15.UseVisualStyleBackColor = $true
$slotbutton15.add_Click($slotbutton15_Click)
#
#slotbutton16
#
$slotbutton16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]469))
$slotbutton16.Name = [System.String]'slotbutton16'
$slotbutton16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]59,[System.Int32]23))
$slotbutton16.TabIndex = [System.Int32]46
$slotbutton16.Text = [System.String]'Button15'
$slotbutton16.UseVisualStyleBackColor = $true
$slotbutton16.add_Click($slotbutton16_Click)
#
#Remotetype
#
$Remotetype.FormattingEnabled = $true
$Remotetype.Items.AddRange([System.Object[]]@([System.String]'RetroTink 4k Pro',[System.String]'RetroTink 4k CE',[System.String]'RetroTink 5X Pro',[System.String]'OSSC',[System.String]'OSSC Pro'))
$Remotetype.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]331,[System.Int32]14))
$Remotetype.Name = [System.String]'Remotetype'
$Remotetype.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]214,[System.Int32]21))
$Remotetype.TabIndex = [System.Int32]68
$Remotetype.add_SelectedIndexChanged($Remotetype_SelectedIndexChanged)
$Remotetype.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList
#
#presetcodelist
#
$presetcodelist.FormattingEnabled = $true
$presetcodelist.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]331,[System.Int32]41))
$presetcodelist.Name = [System.String]'presetcodelist'
$presetcodelist.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]214,[System.Int32]498))
$presetcodelist.TabIndex = [System.Int32]69
#
#ireditorform
#
$ireditorform.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]557,[System.Int32]559))
$ireditorform.Controls.Add($presetcodelist)
$ireditorform.Controls.Add($Remotetype)
$ireditorform.Controls.Add($slotbutton16)
$ireditorform.Controls.Add($slotbutton15)
$ireditorform.Controls.Add($slotbutton14)
$ireditorform.Controls.Add($slotbutton13)
$ireditorform.Controls.Add($slotbutton12)
$ireditorform.Controls.Add($slotbutton11)
$ireditorform.Controls.Add($slotbutton10)
$ireditorform.Controls.Add($slotbutton9)
$ireditorform.Controls.Add($slotbutton8)
$ireditorform.Controls.Add($slotbutton7)
$ireditorform.Controls.Add($slotbutton6)
$ireditorform.Controls.Add($slotbutton5)
$ireditorform.Controls.Add($slotbutton4)
$ireditorform.Controls.Add($slotbutton3)
$ireditorform.Controls.Add($slotbutton2)
$ireditorform.Controls.Add($slotbutton1)
$ireditorform.Controls.Add($presetclosebutton)
$ireditorform.Controls.Add($presetbutton)
$ireditorform.Controls.Add($clrirbutton)
$ireditorform.Controls.Add($comm0x16)
$ireditorform.Controls.Add($comm0x15)
$ireditorform.Controls.Add($comm0x14)
$ireditorform.Controls.Add($comm0x13)
$ireditorform.Controls.Add($comm0x12)
$ireditorform.Controls.Add($comm0x11)
$ireditorform.Controls.Add($comm0x10)
$ireditorform.Controls.Add($comm0x9)
$ireditorform.Controls.Add($comm0x8)
$ireditorform.Controls.Add($comm0x7)
$ireditorform.Controls.Add($comm0x6)
$ireditorform.Controls.Add($comm0x5)
$ireditorform.Controls.Add($comm0x4)
$ireditorform.Controls.Add($comm0x3)
$ireditorform.Controls.Add($comm0x2)
$ireditorform.Controls.Add($adr0x16)
$ireditorform.Controls.Add($adr0x15)
$ireditorform.Controls.Add($adr0x14)
$ireditorform.Controls.Add($adr0x13)
$ireditorform.Controls.Add($adr0x12)
$ireditorform.Controls.Add($adr0x11)
$ireditorform.Controls.Add($adr0x10)
$ireditorform.Controls.Add($adr0x9)
$ireditorform.Controls.Add($adr0x8)
$ireditorform.Controls.Add($adr0x7)
$ireditorform.Controls.Add($adr0x6)
$ireditorform.Controls.Add($adr0x5)
$ireditorform.Controls.Add($adr0x4)
$ireditorform.Controls.Add($adr0x3)
$ireditorform.Controls.Add($adr0x2)
$ireditorform.Controls.Add($commir16)
$ireditorform.Controls.Add($commir15)
$ireditorform.Controls.Add($commir14)
$ireditorform.Controls.Add($commir13)
$ireditorform.Controls.Add($commir12)
$ireditorform.Controls.Add($commir11)
$ireditorform.Controls.Add($commir10)
$ireditorform.Controls.Add($commir9)
$ireditorform.Controls.Add($commir8)
$ireditorform.Controls.Add($commir7)
$ireditorform.Controls.Add($commir6)
$ireditorform.Controls.Add($commir5)
$ireditorform.Controls.Add($commir4)
$ireditorform.Controls.Add($commir3)
$ireditorform.Controls.Add($addir16)
$ireditorform.Controls.Add($addir15)
$ireditorform.Controls.Add($addir14)
$ireditorform.Controls.Add($addir13)
$ireditorform.Controls.Add($addir12)
$ireditorform.Controls.Add($addir11)
$ireditorform.Controls.Add($addir10)
$ireditorform.Controls.Add($nextbutton)
$ireditorform.Controls.Add($previousbutton)
$ireditorform.Controls.Add($addir9)
$ireditorform.Controls.Add($addir8)
$ireditorform.Controls.Add($addir7)
$ireditorform.Controls.Add($addir6)
$ireditorform.Controls.Add($addir5)
$ireditorform.Controls.Add($addir4)
$ireditorform.Controls.Add($addir3)
$ireditorform.Controls.Add($upirbutton)
$ireditorform.Controls.Add($comm0x1)
$ireditorform.Controls.Add($adr0x1)
$ireditorform.Controls.Add($commir2)
$ireditorform.Controls.Add($addir2)
$ireditorform.Controls.Add($commirlabel)
$ireditorform.Controls.Add($iradrlabel)
$ireditorform.Controls.Add($commir1)
$ireditorform.Controls.Add($addir1)
$ireditorform.Controls.Add($ListBox1)
$ireditorform.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ireditorform.MaximizeBox = $false
$ireditorform.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]573,[System.Int32]598))
$ireditorform.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]573,[System.Int32]598))
$ireditorform.SizeGripStyle = [System.Windows.Forms.SizeGripStyle]::Hide
$ireditorform.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterParent
$ireditorform.Text = [System.String]'IR Editor'
$ireditorform.ResumeLayout($false)
$ireditorform.PerformLayout()
Add-Member -InputObject $ireditorform -Name ListBox1 -Value $ListBox1 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir1 -Value $addir1 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir1 -Value $commir1 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name iradrlabel -Value $iradrlabel -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commirlabel -Value $commirlabel -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir2 -Value $addir2 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir2 -Value $commir2 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x1 -Value $adr0x1 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x1 -Value $comm0x1 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name upirbutton -Value $upirbutton -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir3 -Value $addir3 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir4 -Value $addir4 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir5 -Value $addir5 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir6 -Value $addir6 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir7 -Value $addir7 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir8 -Value $addir8 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir9 -Value $addir9 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name previousbutton -Value $previousbutton -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name nextbutton -Value $nextbutton -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir10 -Value $addir10 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir11 -Value $addir11 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir12 -Value $addir12 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir13 -Value $addir13 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir14 -Value $addir14 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir15 -Value $addir15 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name addir16 -Value $addir16 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir3 -Value $commir3 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir4 -Value $commir4 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir5 -Value $commir5 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir6 -Value $commir6 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir7 -Value $commir7 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir8 -Value $commir8 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir9 -Value $commir9 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir10 -Value $commir10 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir11 -Value $commir11 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir12 -Value $commir12 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir13 -Value $commir13 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir14 -Value $commir14 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir15 -Value $commir15 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name commir16 -Value $commir16 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x2 -Value $adr0x2 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x3 -Value $adr0x3 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x4 -Value $adr0x4 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x5 -Value $adr0x5 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x6 -Value $adr0x6 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x7 -Value $adr0x7 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x8 -Value $adr0x8 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x9 -Value $adr0x9 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x10 -Value $adr0x10 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x11 -Value $adr0x11 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x12 -Value $adr0x12 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x13 -Value $adr0x13 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x14 -Value $adr0x14 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x15 -Value $adr0x15 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name adr0x16 -Value $adr0x16 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x2 -Value $comm0x2 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x3 -Value $comm0x3 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x4 -Value $comm0x4 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x5 -Value $comm0x5 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x6 -Value $comm0x6 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x7 -Value $comm0x7 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x8 -Value $comm0x8 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x9 -Value $comm0x9 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x10 -Value $comm0x10 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x11 -Value $comm0x11 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x12 -Value $comm0x12 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x13 -Value $comm0x13 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x14 -Value $comm0x14 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x15 -Value $comm0x15 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name comm0x16 -Value $comm0x16 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name clrirbutton -Value $clrirbutton -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name presetbutton -Value $presetbutton -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name presetclosebutton -Value $presetclosebutton -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton1 -Value $slotbutton1 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton2 -Value $slotbutton2 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton3 -Value $slotbutton3 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton4 -Value $slotbutton4 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton5 -Value $slotbutton5 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton6 -Value $slotbutton6 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton7 -Value $slotbutton7 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton8 -Value $slotbutton8 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton9 -Value $slotbutton9 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton10 -Value $slotbutton10 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton11 -Value $slotbutton11 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton12 -Value $slotbutton12 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton13 -Value $slotbutton13 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton14 -Value $slotbutton14 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton15 -Value $slotbutton15 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name slotbutton16 -Value $slotbutton16 -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name Remotetype -Value $Remotetype -MemberType NoteProperty
Add-Member -InputObject $ireditorform -Name presetcodelist -Value $presetcodelist -MemberType NoteProperty
}
. InitializeComponent
