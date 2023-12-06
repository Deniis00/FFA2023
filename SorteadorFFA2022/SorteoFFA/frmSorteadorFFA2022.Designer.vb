<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class frmSorteadorFFA2022
    Inherits DevExpress.XtraEditors.XtraForm

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Dim Appearance1 As Infragistics.Win.Appearance = New Infragistics.Win.Appearance()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmSorteadorFFA2022))
        Me.btnSortear = New System.Windows.Forms.Button()
        Me.txtunidad = New System.Windows.Forms.TextBox()
        Me.txtdecena = New System.Windows.Forms.TextBox()
        Me.txtunidadMil = New System.Windows.Forms.TextBox()
        Me.txtcentena = New System.Windows.Forms.TextBox()
        Me.lblcantParticipantes = New DevExpress.XtraEditors.LabelControl()
        Me.lblNombre = New Infragistics.Win.Misc.UltraLabel()
        Me.pnlFoto = New DevExpress.XtraEditors.PanelControl()
        Me.pcFotoFuncionario = New System.Windows.Forms.PictureBox()
        Me.pbFondo = New System.Windows.Forms.PictureBox()
        CType(Me.pnlFoto, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.pnlFoto.SuspendLayout()
        CType(Me.pcFotoFuncionario, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbFondo, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'btnSortear
        '
        Me.btnSortear.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.btnSortear.BackColor = System.Drawing.Color.Transparent
        Me.btnSortear.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnSortear.ForeColor = System.Drawing.SystemColors.ActiveCaption
        Me.btnSortear.Location = New System.Drawing.Point(510, 747)
        Me.btnSortear.Name = "btnSortear"
        Me.btnSortear.Size = New System.Drawing.Size(75, 23)
        Me.btnSortear.TabIndex = 2
        Me.btnSortear.Text = "&Sortear"
        Me.btnSortear.UseVisualStyleBackColor = False
        '
        'txtunidad
        '
        Me.txtunidad.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.txtunidad.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.txtunidad.Cursor = System.Windows.Forms.Cursors.No
        Me.txtunidad.Font = New System.Drawing.Font("Microsoft Sans Serif", 75.0!, System.Drawing.FontStyle.Bold)
        Me.txtunidad.Location = New System.Drawing.Point(595, 634)
        Me.txtunidad.Name = "txtunidad"
        Me.txtunidad.Size = New System.Drawing.Size(52, 114)
        Me.txtunidad.TabIndex = 15
        Me.txtunidad.Text = "0"
        Me.txtunidad.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'txtdecena
        '
        Me.txtdecena.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.txtdecena.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.txtdecena.Cursor = System.Windows.Forms.Cursors.Help
        Me.txtdecena.Font = New System.Drawing.Font("Microsoft Sans Serif", 75.0!, System.Drawing.FontStyle.Bold)
        Me.txtdecena.Location = New System.Drawing.Point(546, 634)
        Me.txtdecena.Name = "txtdecena"
        Me.txtdecena.Size = New System.Drawing.Size(52, 114)
        Me.txtdecena.TabIndex = 16
        Me.txtdecena.Text = "0"
        Me.txtdecena.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'txtunidadMil
        '
        Me.txtunidadMil.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.txtunidadMil.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.txtunidadMil.Cursor = System.Windows.Forms.Cursors.WaitCursor
        Me.txtunidadMil.Font = New System.Drawing.Font("Microsoft Sans Serif", 75.0!, System.Drawing.FontStyle.Bold)
        Me.txtunidadMil.Location = New System.Drawing.Point(448, 634)
        Me.txtunidadMil.Name = "txtunidadMil"
        Me.txtunidadMil.Size = New System.Drawing.Size(52, 114)
        Me.txtunidadMil.TabIndex = 18
        Me.txtunidadMil.Text = "0"
        Me.txtunidadMil.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'txtcentena
        '
        Me.txtcentena.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.txtcentena.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.txtcentena.Cursor = System.Windows.Forms.Cursors.WaitCursor
        Me.txtcentena.Font = New System.Drawing.Font("Microsoft Sans Serif", 75.0!, System.Drawing.FontStyle.Bold)
        Me.txtcentena.Location = New System.Drawing.Point(497, 634)
        Me.txtcentena.Name = "txtcentena"
        Me.txtcentena.Size = New System.Drawing.Size(52, 114)
        Me.txtcentena.TabIndex = 17
        Me.txtcentena.Text = "0"
        Me.txtcentena.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'lblcantParticipantes
        '
        Me.lblcantParticipantes.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.lblcantParticipantes.Appearance.BackColor = System.Drawing.Color.White
        Me.lblcantParticipantes.Appearance.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.0!)
        Me.lblcantParticipantes.Appearance.ForeColor = System.Drawing.Color.FromArgb(CType(CType(128, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.lblcantParticipantes.Appearance.Options.UseBackColor = True
        Me.lblcantParticipantes.Appearance.Options.UseFont = True
        Me.lblcantParticipantes.Appearance.Options.UseForeColor = True
        Me.lblcantParticipantes.Location = New System.Drawing.Point(27, 733)
        Me.lblcantParticipantes.Name = "lblcantParticipantes"
        Me.lblcantParticipantes.Size = New System.Drawing.Size(0, 25)
        Me.lblcantParticipantes.TabIndex = 19
        '
        'lblNombre
        '
        Appearance1.FontData.Name = "Tahoma"
        Appearance1.FontData.SizeInPoints = 36.0!
        Appearance1.ForeColor = System.Drawing.Color.FromArgb(CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer))
        Appearance1.ImageBackgroundOrigin = Infragistics.Win.ImageBackgroundOrigin.Form
        Appearance1.TextHAlignAsString = "Center"
        Appearance1.TextVAlignAsString = "Middle"
        Me.lblNombre.Appearance = Appearance1
        Me.lblNombre.AutoEllipsis = False
        Me.lblNombre.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.lblNombre.Font = New System.Drawing.Font("Microsoft Sans Serif", 4.0!, System.Drawing.FontStyle.Bold)
        Me.lblNombre.Location = New System.Drawing.Point(0, 281)
        Me.lblNombre.Name = "lblNombre"
        Me.lblNombre.Size = New System.Drawing.Size(1060, 66)
        Me.lblNombre.TabIndex = 14
        '
        'pnlFoto
        '
        Me.pnlFoto.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.pnlFoto.Appearance.BackColor = System.Drawing.Color.White
        Me.pnlFoto.Appearance.Options.UseBackColor = True
        Me.pnlFoto.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder
        Me.pnlFoto.Controls.Add(Me.lblNombre)
        Me.pnlFoto.Controls.Add(Me.pcFotoFuncionario)
        Me.pnlFoto.Location = New System.Drawing.Point(12, 236)
        Me.pnlFoto.Name = "pnlFoto"
        Me.pnlFoto.Size = New System.Drawing.Size(1060, 347)
        Me.pnlFoto.TabIndex = 21
        '
        'pcFotoFuncionario
        '
        Me.pcFotoFuncionario.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.pcFotoFuncionario.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center
        Me.pcFotoFuncionario.Image = CType(resources.GetObject("pcFotoFuncionario.Image"), System.Drawing.Image)
        Me.pcFotoFuncionario.Location = New System.Drawing.Point(380, 3)
        Me.pcFotoFuncionario.Name = "pcFotoFuncionario"
        Me.pcFotoFuncionario.Size = New System.Drawing.Size(301, 272)
        Me.pcFotoFuncionario.TabIndex = 3
        Me.pcFotoFuncionario.TabStop = False
        '
        'pbFondo
        '
        Me.pbFondo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.pbFondo.Dock = System.Windows.Forms.DockStyle.Fill
        Me.pbFondo.Image = CType(resources.GetObject("pbFondo.Image"), System.Drawing.Image)
        Me.pbFondo.Location = New System.Drawing.Point(0, 0)
        Me.pbFondo.Name = "pbFondo"
        Me.pbFondo.Size = New System.Drawing.Size(1095, 770)
        Me.pbFondo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pbFondo.TabIndex = 0
        Me.pbFondo.TabStop = False
        '
        'frmSorteadorFFA2022
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1095, 770)
        Me.Controls.Add(Me.pnlFoto)
        Me.Controls.Add(Me.lblcantParticipantes)
        Me.Controls.Add(Me.txtunidadMil)
        Me.Controls.Add(Me.txtcentena)
        Me.Controls.Add(Me.txtdecena)
        Me.Controls.Add(Me.txtunidad)
        Me.Controls.Add(Me.btnSortear)
        Me.Controls.Add(Me.pbFondo)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "frmSorteadorFFA2022"
        Me.Text = "FFA 2022"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        CType(Me.pnlFoto, System.ComponentModel.ISupportInitialize).EndInit()
        Me.pnlFoto.ResumeLayout(False)
        CType(Me.pcFotoFuncionario, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbFondo, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents pbFondo As PictureBox
    Friend WithEvents btnSortear As Button
    Friend WithEvents pcFotoFuncionario As PictureBox
    Friend WithEvents txtunidad As TextBox
    Friend WithEvents txtunidadMil As TextBox
    Friend WithEvents txtcentena As TextBox
    Public WithEvents txtdecena As TextBox
    Friend WithEvents lblcantParticipantes As DevExpress.XtraEditors.LabelControl
    Friend WithEvents lblNombre As Infragistics.Win.Misc.UltraLabel
    Friend WithEvents pnlFoto As DevExpress.XtraEditors.PanelControl
End Class
