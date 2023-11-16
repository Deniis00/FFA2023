<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmFoto
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmFoto))
        Me.picFoto = New System.Windows.Forms.PictureBox
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.QuitarFotoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.Label1 = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.txtNombre = New System.Windows.Forms.TextBox
        Me.txtApellido = New System.Windows.Forms.TextBox
        Me.btnGuardar = New System.Windows.Forms.Button
        Me.btnSiguiente = New System.Windows.Forms.Button
        Me.btnAnterior = New System.Windows.Forms.Button
        Me.Label3 = New System.Windows.Forms.Label
        Me.txtInicioSesion = New System.Windows.Forms.TextBox
        Me.chkParticipaSorteo = New System.Windows.Forms.CheckBox
        Me.btnFoto = New System.Windows.Forms.Button
        Me.chkActivo = New System.Windows.Forms.CheckBox
        Me.LblImprimir = New System.Windows.Forms.Label
        CType(Me.picFoto, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'picFoto
        '
        Me.picFoto.ContextMenuStrip = Me.ContextMenuStrip1
        Me.picFoto.Location = New System.Drawing.Point(127, 32)
        Me.picFoto.Name = "picFoto"
        Me.picFoto.Size = New System.Drawing.Size(125, 158)
        Me.picFoto.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picFoto.TabIndex = 0
        Me.picFoto.TabStop = False
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.QuitarFotoToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(133, 26)
        '
        'QuitarFotoToolStripMenuItem
        '
        Me.QuitarFotoToolStripMenuItem.Name = "QuitarFotoToolStripMenuItem"
        Me.QuitarFotoToolStripMenuItem.Size = New System.Drawing.Size(132, 22)
        Me.QuitarFotoToolStripMenuItem.Text = "Quitar foto"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(54, 257)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(47, 13)
        Me.Label1.TabIndex = 2
        Me.Label1.Text = "Nombre:"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(54, 283)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(47, 13)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Apellido:"
        '
        'txtNombre
        '
        Me.txtNombre.Location = New System.Drawing.Point(107, 254)
        Me.txtNombre.Name = "txtNombre"
        Me.txtNombre.Size = New System.Drawing.Size(173, 20)
        Me.txtNombre.TabIndex = 3
        '
        'txtApellido
        '
        Me.txtApellido.Location = New System.Drawing.Point(107, 280)
        Me.txtApellido.Name = "txtApellido"
        Me.txtApellido.Size = New System.Drawing.Size(173, 20)
        Me.txtApellido.TabIndex = 5
        '
        'btnGuardar
        '
        Me.btnGuardar.Location = New System.Drawing.Point(107, 382)
        Me.btnGuardar.Name = "btnGuardar"
        Me.btnGuardar.Size = New System.Drawing.Size(173, 23)
        Me.btnGuardar.TabIndex = 10
        Me.btnGuardar.Text = "&Actualizar"
        Me.btnGuardar.UseVisualStyleBackColor = True
        '
        'btnSiguiente
        '
        Me.btnSiguiente.Location = New System.Drawing.Point(192, 353)
        Me.btnSiguiente.Name = "btnSiguiente"
        Me.btnSiguiente.Size = New System.Drawing.Size(21, 23)
        Me.btnSiguiente.TabIndex = 9
        Me.btnSiguiente.Text = ">"
        Me.btnSiguiente.UseVisualStyleBackColor = True
        '
        'btnAnterior
        '
        Me.btnAnterior.Location = New System.Drawing.Point(165, 353)
        Me.btnAnterior.Name = "btnAnterior"
        Me.btnAnterior.Size = New System.Drawing.Size(21, 23)
        Me.btnAnterior.TabIndex = 8
        Me.btnAnterior.Text = "<"
        Me.btnAnterior.UseVisualStyleBackColor = True
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(12, 231)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(89, 13)
        Me.Label3.TabIndex = 0
        Me.Label3.Text = "Inicion de sesión:"
        '
        'txtInicioSesion
        '
        Me.txtInicioSesion.Location = New System.Drawing.Point(107, 228)
        Me.txtInicioSesion.Name = "txtInicioSesion"
        Me.txtInicioSesion.ReadOnly = True
        Me.txtInicioSesion.Size = New System.Drawing.Size(173, 20)
        Me.txtInicioSesion.TabIndex = 1
        '
        'chkParticipaSorteo
        '
        Me.chkParticipaSorteo.AutoSize = True
        Me.chkParticipaSorteo.Location = New System.Drawing.Point(107, 308)
        Me.chkParticipaSorteo.Name = "chkParticipaSorteo"
        Me.chkParticipaSorteo.Size = New System.Drawing.Size(118, 17)
        Me.chkParticipaSorteo.TabIndex = 6
        Me.chkParticipaSorteo.Text = "Participa del Sorteo"
        Me.chkParticipaSorteo.UseVisualStyleBackColor = True
        '
        'btnFoto
        '
        Me.btnFoto.Location = New System.Drawing.Point(127, 32)
        Me.btnFoto.Name = "btnFoto"
        Me.btnFoto.Size = New System.Drawing.Size(125, 158)
        Me.btnFoto.TabIndex = 11
        Me.btnFoto.UseVisualStyleBackColor = True
        '
        'chkActivo
        '
        Me.chkActivo.AutoSize = True
        Me.chkActivo.Location = New System.Drawing.Point(107, 330)
        Me.chkActivo.Name = "chkActivo"
        Me.chkActivo.Size = New System.Drawing.Size(113, 17)
        Me.chkActivo.TabIndex = 7
        Me.chkActivo.Text = "Funcionario activo"
        Me.chkActivo.UseVisualStyleBackColor = True
        '
        'LblImprimir
        '
        Me.LblImprimir.AutoSize = True
        Me.LblImprimir.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LblImprimir.ForeColor = System.Drawing.Color.Red
        Me.LblImprimir.Location = New System.Drawing.Point(12, 411)
        Me.LblImprimir.Name = "LblImprimir"
        Me.LblImprimir.Size = New System.Drawing.Size(192, 14)
        Me.LblImprimir.TabIndex = 12
        Me.LblImprimir.Text = "Imprimir Listado de Sorteo (CTRL+ P)"
        '
        'frmFoto
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(379, 433)
        Me.Controls.Add(Me.LblImprimir)
        Me.Controls.Add(Me.chkParticipaSorteo)
        Me.Controls.Add(Me.chkActivo)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.txtApellido)
        Me.Controls.Add(Me.btnAnterior)
        Me.Controls.Add(Me.btnGuardar)
        Me.Controls.Add(Me.txtNombre)
        Me.Controls.Add(Me.btnSiguiente)
        Me.Controls.Add(Me.txtInicioSesion)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.btnFoto)
        Me.Controls.Add(Me.picFoto)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.KeyPreview = True
        Me.MaximizeBox = False
        Me.Name = "frmFoto"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Foto"
        CType(Me.picFoto, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents picFoto As System.Windows.Forms.PictureBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents QuitarFotoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents txtNombre As System.Windows.Forms.TextBox
    Friend WithEvents txtApellido As System.Windows.Forms.TextBox
    Friend WithEvents btnGuardar As System.Windows.Forms.Button
    Friend WithEvents btnSiguiente As System.Windows.Forms.Button
    Friend WithEvents btnAnterior As System.Windows.Forms.Button
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txtInicioSesion As System.Windows.Forms.TextBox
    Friend WithEvents chkParticipaSorteo As System.Windows.Forms.CheckBox
    Friend WithEvents btnFoto As System.Windows.Forms.Button
    Friend WithEvents chkActivo As System.Windows.Forms.CheckBox
    Friend WithEvents LblImprimir As System.Windows.Forms.Label
End Class
