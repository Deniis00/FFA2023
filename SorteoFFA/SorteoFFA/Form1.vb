Imports System.IO

Public Class Form1
    Inherits System.Windows.Forms.Form
    'Prueba SourceSafe 2005
#Region " Código generado por el Diseñador de Windows Forms "

    Public Sub New()
        MyBase.New()

        'El Diseñador de Windows Forms requiere esta llamada.
        InitializeComponent()

        'Agregar cualquier inicialización después de la llamada a InitializeComponent()

    End Sub

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms requiere el siguiente procedimiento
    'Puede modificarse utilizando el Diseñador de Windows Forms. 
    'No lo modifique con el editor de código.
    Friend WithEvents picFondo As System.Windows.Forms.PictureBox
    Friend WithEvents btnSortear As System.Windows.Forms.Button
    Friend WithEvents lblCodigo As System.Windows.Forms.Label
    Friend WithEvents lblApellido As Infragistics.Win.Misc.UltraLabel
    Friend WithEvents MenuContent As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents MnuConfigurarTamaño2 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents MnuSalir2 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents GcAjuste As DevExpress.XtraEditors.GroupControl
    Friend WithEvents TxtHeight As DevExpress.XtraEditors.TextEdit
    Friend WithEvents TxtWidth As DevExpress.XtraEditors.TextEdit
    Friend WithEvents LabelControl1 As DevExpress.XtraEditors.LabelControl
    Friend WithEvents LblWidth As DevExpress.XtraEditors.LabelControl
    Friend WithEvents BtnCancelar As DevExpress.XtraEditors.SimpleButton
    Friend WithEvents BtnAceptar As DevExpress.XtraEditors.SimpleButton
    Friend WithEvents MnuCambiarFondo2 As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents picImagen As Infragistics.Win.UltraWinEditors.UltraPictureBox
    Friend WithEvents MenuConfig As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents MnuCambiarFondo As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents MnuCambiarTamanho As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents MnuSalir As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents lblNombre As Infragistics.Win.Misc.UltraLabel
    Friend WithEvents CambiarColorDeTextoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents EliminarFondoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CdSorteo As System.Windows.Forms.ColorDialog
    Friend WithEvents lblNumero As Infragistics.Win.Misc.UltraLabel
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim Appearance1 As Infragistics.Win.Appearance = New Infragistics.Win.Appearance()
        Dim Appearance2 As Infragistics.Win.Appearance = New Infragistics.Win.Appearance()
        Dim Appearance3 As Infragistics.Win.Appearance = New Infragistics.Win.Appearance()
        Dim Appearance4 As Infragistics.Win.Appearance = New Infragistics.Win.Appearance()
        Dim Appearance5 As Infragistics.Win.Appearance = New Infragistics.Win.Appearance()
        Me.btnSortear = New System.Windows.Forms.Button()
        Me.lblCodigo = New System.Windows.Forms.Label()
        Me.lblApellido = New Infragistics.Win.Misc.UltraLabel()
        Me.GcAjuste = New DevExpress.XtraEditors.GroupControl()
        Me.TxtHeight = New DevExpress.XtraEditors.TextEdit()
        Me.TxtWidth = New DevExpress.XtraEditors.TextEdit()
        Me.LabelControl1 = New DevExpress.XtraEditors.LabelControl()
        Me.LblWidth = New DevExpress.XtraEditors.LabelControl()
        Me.BtnCancelar = New DevExpress.XtraEditors.SimpleButton()
        Me.BtnAceptar = New DevExpress.XtraEditors.SimpleButton()
        Me.picImagen = New Infragistics.Win.UltraWinEditors.UltraPictureBox()
        Me.MenuConfig = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.CambiarColorDeTextoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MnuCambiarFondo = New System.Windows.Forms.ToolStripMenuItem()
        Me.EliminarFondoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MnuCambiarTamanho = New System.Windows.Forms.ToolStripMenuItem()
        Me.MnuSalir = New System.Windows.Forms.ToolStripMenuItem()
        Me.lblNumero = New Infragistics.Win.Misc.UltraLabel()
        Me.lblNombre = New Infragistics.Win.Misc.UltraLabel()
        Me.picFondo = New System.Windows.Forms.PictureBox()
        Me.MnuCambiarFondo2 = New System.Windows.Forms.ToolStripMenuItem()
        Me.MnuConfigurarTamaño2 = New System.Windows.Forms.ToolStripMenuItem()
        Me.MnuSalir2 = New System.Windows.Forms.ToolStripMenuItem()
        Me.CdSorteo = New System.Windows.Forms.ColorDialog()
        CType(Me.GcAjuste, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GcAjuste.SuspendLayout()
        CType(Me.TxtHeight.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.TxtWidth.Properties, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.MenuConfig.SuspendLayout()
        CType(Me.picFondo, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'btnSortear
        '
        Me.btnSortear.Anchor = System.Windows.Forms.AnchorStyles.Right
        Me.btnSortear.BackColor = System.Drawing.Color.Transparent
        Me.btnSortear.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnSortear.ForeColor = System.Drawing.SystemColors.ActiveCaption
        Me.btnSortear.Location = New System.Drawing.Point(405, 534)
        Me.btnSortear.Name = "btnSortear"
        Me.btnSortear.Size = New System.Drawing.Size(75, 23)
        Me.btnSortear.TabIndex = 1
        Me.btnSortear.Text = "&Sortear"
        Me.btnSortear.UseVisualStyleBackColor = False
        '
        'lblCodigo
        '
        Me.lblCodigo.AutoSize = True
        Me.lblCodigo.Location = New System.Drawing.Point(415, 544)
        Me.lblCodigo.Name = "lblCodigo"
        Me.lblCodigo.Size = New System.Drawing.Size(39, 13)
        Me.lblCodigo.TabIndex = 5
        Me.lblCodigo.Text = "Label1"
        Me.lblCodigo.Visible = False
        '
        'lblApellido
        '
        Me.lblApellido.Anchor = System.Windows.Forms.AnchorStyles.None
        Appearance1.BackColor = System.Drawing.Color.White
        Appearance1.BackColor2 = System.Drawing.Color.White
        Appearance1.BackColorAlpha = Infragistics.Win.Alpha.UseAlphaLevel
        Appearance1.BackColorDisabled = System.Drawing.Color.Transparent
        Appearance1.FontData.BoldAsString = "False"
        Appearance1.FontData.Name = "Tahoma"
        Appearance1.FontData.SizeInPoints = 14.0!
        Appearance1.ForeColor = System.Drawing.Color.FromArgb(CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer))
        Appearance1.ImageBackground = Global.SorteoFFA.My.Resources.Resources.whitebackground1920x1200
        Appearance1.ImageBackgroundOrigin = Infragistics.Win.ImageBackgroundOrigin.Form
        Appearance1.TextHAlignAsString = "Center"
        Appearance1.TextVAlignAsString = "Middle"
        Me.lblApellido.Appearance = Appearance1
        Appearance2.BackColor = System.Drawing.Color.Transparent
        Appearance2.BackColor2 = System.Drawing.Color.Transparent
        Appearance2.BackColorAlpha = Infragistics.Win.Alpha.Transparent
        Me.lblApellido.HotTrackAppearance = Appearance2
        Me.lblApellido.Location = New System.Drawing.Point(169, 511)
        Me.lblApellido.Name = "lblApellido"
        Me.lblApellido.Size = New System.Drawing.Size(590, 30)
        Me.lblApellido.TabIndex = 6
        '
        'GcAjuste
        '
        Me.GcAjuste.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.GcAjuste.Controls.Add(Me.TxtHeight)
        Me.GcAjuste.Controls.Add(Me.TxtWidth)
        Me.GcAjuste.Controls.Add(Me.LabelControl1)
        Me.GcAjuste.Controls.Add(Me.LblWidth)
        Me.GcAjuste.Controls.Add(Me.BtnCancelar)
        Me.GcAjuste.Controls.Add(Me.BtnAceptar)
        Me.GcAjuste.Location = New System.Drawing.Point(361, 236)
        Me.GcAjuste.Name = "GcAjuste"
        Me.GcAjuste.Size = New System.Drawing.Size(183, 129)
        Me.GcAjuste.TabIndex = 10
        Me.GcAjuste.Text = "Ajustar tamaño"
        Me.GcAjuste.Visible = False
        '
        'TxtHeight
        '
        Me.TxtHeight.Location = New System.Drawing.Point(69, 53)
        Me.TxtHeight.Name = "TxtHeight"
        Me.TxtHeight.Size = New System.Drawing.Size(100, 20)
        Me.TxtHeight.TabIndex = 2
        '
        'TxtWidth
        '
        Me.TxtWidth.Location = New System.Drawing.Point(69, 30)
        Me.TxtWidth.Name = "TxtWidth"
        Me.TxtWidth.Size = New System.Drawing.Size(100, 20)
        Me.TxtWidth.TabIndex = 1
        '
        'LabelControl1
        '
        Me.LabelControl1.Location = New System.Drawing.Point(28, 56)
        Me.LabelControl1.Name = "LabelControl1"
        Me.LabelControl1.Size = New System.Drawing.Size(35, 13)
        Me.LabelControl1.TabIndex = 12
        Me.LabelControl1.Text = "Height:"
        '
        'LblWidth
        '
        Me.LblWidth.Location = New System.Drawing.Point(31, 33)
        Me.LblWidth.Name = "LblWidth"
        Me.LblWidth.Size = New System.Drawing.Size(32, 13)
        Me.LblWidth.TabIndex = 11
        Me.LblWidth.Text = "Width:"
        '
        'BtnCancelar
        '
        Me.BtnCancelar.Location = New System.Drawing.Point(94, 101)
        Me.BtnCancelar.Name = "BtnCancelar"
        Me.BtnCancelar.Size = New System.Drawing.Size(75, 23)
        Me.BtnCancelar.TabIndex = 4
        Me.BtnCancelar.Text = "Cancelar"
        '
        'BtnAceptar
        '
        Me.BtnAceptar.Location = New System.Drawing.Point(13, 101)
        Me.BtnAceptar.Name = "BtnAceptar"
        Me.BtnAceptar.Size = New System.Drawing.Size(75, 23)
        Me.BtnAceptar.TabIndex = 3
        Me.BtnAceptar.Text = "Aceptar"
        '
        'picImagen
        '
        Me.picImagen.Anchor = System.Windows.Forms.AnchorStyles.None
        Appearance3.ImageBackground = Global.SorteoFFA.My.Resources.Resources.whitebackground1920x1200
        Appearance3.ImageBackgroundOrigin = Infragistics.Win.ImageBackgroundOrigin.Form
        Me.picImagen.Appearance = Appearance3
        Me.picImagen.BorderShadowColor = System.Drawing.Color.Empty
        Me.picImagen.BorderStyle = Infragistics.Win.UIElementBorderStyle.None
        Me.picImagen.Location = New System.Drawing.Point(352, 173)
        Me.picImagen.Name = "picImagen"
        Me.picImagen.ScaleImage = Infragistics.Win.ScaleImage.Always
        Me.picImagen.Size = New System.Drawing.Size(200, 260)
        Me.picImagen.TabIndex = 11
        '
        'MenuConfig
        '
        Me.MenuConfig.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.CambiarColorDeTextoToolStripMenuItem, Me.MnuCambiarFondo, Me.EliminarFondoToolStripMenuItem, Me.MnuCambiarTamanho, Me.MnuSalir})
        Me.MenuConfig.Name = "MenuConfig"
        Me.MenuConfig.Size = New System.Drawing.Size(200, 114)
        '
        'CambiarColorDeTextoToolStripMenuItem
        '
        Me.CambiarColorDeTextoToolStripMenuItem.Image = Global.SorteoFFA.My.Resources.Resources.color_line
        Me.CambiarColorDeTextoToolStripMenuItem.Name = "CambiarColorDeTextoToolStripMenuItem"
        Me.CambiarColorDeTextoToolStripMenuItem.Size = New System.Drawing.Size(199, 22)
        Me.CambiarColorDeTextoToolStripMenuItem.Text = "Cambiar Color de Texto"
        '
        'MnuCambiarFondo
        '
        Me.MnuCambiarFondo.Image = Global.SorteoFFA.My.Resources.Resources.fileview_preview
        Me.MnuCambiarFondo.Name = "MnuCambiarFondo"
        Me.MnuCambiarFondo.Size = New System.Drawing.Size(199, 22)
        Me.MnuCambiarFondo.Text = "Cambiar Fondo"
        '
        'EliminarFondoToolStripMenuItem
        '
        Me.EliminarFondoToolStripMenuItem.Image = Global.SorteoFFA.My.Resources.Resources.window_suppressed
        Me.EliminarFondoToolStripMenuItem.Name = "EliminarFondoToolStripMenuItem"
        Me.EliminarFondoToolStripMenuItem.Size = New System.Drawing.Size(199, 22)
        Me.EliminarFondoToolStripMenuItem.Text = "Eliminar Fondo"
        '
        'MnuCambiarTamanho
        '
        Me.MnuCambiarTamanho.Image = Global.SorteoFFA.My.Resources.Resources.window_fullscreen
        Me.MnuCambiarTamanho.Name = "MnuCambiarTamanho"
        Me.MnuCambiarTamanho.Size = New System.Drawing.Size(199, 22)
        Me.MnuCambiarTamanho.Text = "Cambiar Tamaño"
        '
        'MnuSalir
        '
        Me.MnuSalir.Image = Global.SorteoFFA.My.Resources.Resources.application_exit
        Me.MnuSalir.Name = "MnuSalir"
        Me.MnuSalir.Size = New System.Drawing.Size(199, 22)
        Me.MnuSalir.Text = "Salir"
        '
        'lblNumero
        '
        Me.lblNumero.Anchor = System.Windows.Forms.AnchorStyles.Right
        Appearance4.FontData.Name = "Tahoma"
        Appearance4.FontData.SizeInPoints = 36.0!
        Appearance4.ForeColor = System.Drawing.Color.FromArgb(CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer))
        Appearance4.ImageBackground = Global.SorteoFFA.My.Resources.Resources.whitebackground1920x1200
        Appearance4.ImageBackgroundOrigin = Infragistics.Win.ImageBackgroundOrigin.Form
        Appearance4.TextHAlignAsString = "Center"
        Appearance4.TextVAlignAsString = "Middle"
        Me.lblNumero.Appearance = Appearance4
        Me.lblNumero.Location = New System.Drawing.Point(151, 450)
        Me.lblNumero.Name = "lblNumero"
        Me.lblNumero.Size = New System.Drawing.Size(590, 55)
        Me.lblNumero.TabIndex = 12
        '
        'lblNombre
        '
        Me.lblNombre.Anchor = System.Windows.Forms.AnchorStyles.Right
        Appearance5.FontData.Name = "Tahoma"
        Appearance5.FontData.SizeInPoints = 36.0!
        Appearance5.ForeColor = System.Drawing.Color.FromArgb(CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer), CType(CType(64, Byte), Integer))
        Appearance5.ImageBackground = Global.SorteoFFA.My.Resources.Resources.whitebackground1920x1200
        Appearance5.ImageBackgroundOrigin = Infragistics.Win.ImageBackgroundOrigin.Form
        Appearance5.TextHAlignAsString = "Center"
        Appearance5.TextVAlignAsString = "Middle"
        Me.lblNombre.Appearance = Appearance5
        Me.lblNombre.Location = New System.Drawing.Point(151, 450)
        Me.lblNombre.Name = "lblNombre"
        Me.lblNombre.Size = New System.Drawing.Size(590, 55)
        Me.lblNombre.TabIndex = 13
        '
        'picFondo
        '
        Me.picFondo.BackColor = System.Drawing.Color.Transparent
        Me.picFondo.Dock = System.Windows.Forms.DockStyle.Fill
        Me.picFondo.Image = Global.SorteoFFA.My.Resources.Resources.whitebackground1920x1200
        Me.picFondo.Location = New System.Drawing.Point(0, 0)
        Me.picFondo.Name = "picFondo"
        Me.picFondo.Size = New System.Drawing.Size(904, 600)
        Me.picFondo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.picFondo.TabIndex = 0
        Me.picFondo.TabStop = False
        '
        'MnuCambiarFondo2
        '
        Me.MnuCambiarFondo2.Image = Global.SorteoFFA.My.Resources.Resources.fileview_preview
        Me.MnuCambiarFondo2.Name = "MnuCambiarFondo2"
        Me.MnuCambiarFondo2.Size = New System.Drawing.Size(178, 22)
        Me.MnuCambiarFondo2.Text = "Cambiar Fondo"
        '
        'MnuConfigurarTamaño2
        '
        Me.MnuConfigurarTamaño2.Image = Global.SorteoFFA.My.Resources.Resources.window_fullscreen
        Me.MnuConfigurarTamaño2.Name = "MnuConfigurarTamaño2"
        Me.MnuConfigurarTamaño2.Size = New System.Drawing.Size(178, 22)
        Me.MnuConfigurarTamaño2.Text = "Configurar Tamaño"
        '
        'MnuSalir2
        '
        Me.MnuSalir2.Image = Global.SorteoFFA.My.Resources.Resources.application_exit
        Me.MnuSalir2.Name = "MnuSalir2"
        Me.MnuSalir2.Size = New System.Drawing.Size(178, 22)
        Me.MnuSalir2.Text = "Salir"
        '
        'Form1
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(904, 600)
        Me.ContextMenuStrip = Me.MenuConfig
        Me.Controls.Add(Me.lblNombre)
        Me.Controls.Add(Me.lblNumero)
        Me.Controls.Add(Me.picImagen)
        Me.Controls.Add(Me.GcAjuste)
        Me.Controls.Add(Me.btnSortear)
        Me.Controls.Add(Me.lblApellido)
        Me.Controls.Add(Me.picFondo)
        Me.Controls.Add(Me.lblCodigo)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        CType(Me.GcAjuste, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GcAjuste.ResumeLayout(False)
        Me.GcAjuste.PerformLayout()
        CType(Me.TxtHeight.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.TxtWidth.Properties, System.ComponentModel.ISupportInitialize).EndInit()
        Me.MenuConfig.ResumeLayout(False)
        CType(Me.picFondo, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

#End Region

#Region "Declaraciones"
    Dim Ds As New DataSet
    Dim NumeroSorteado As Integer
    Dim Premio As Integer = 0
    Dim Ganador As New ArrayList
    Dim CantidadParticipantes As Integer
    Dim Nombre As String

    ''Declaramos variables para combinacion exit
    Dim Ctrl As Boolean
    Dim S As Boolean

    Private Const vbKeyS = 83
    Private Const vbKeyControl = 17
#End Region

#Region "Load"
    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ' VARIABLES.
        CheckForIllegalCrossThreadCalls = False

        HacerTransparente()
        CargarBackground()
        CenterImg()
        'Verifica que existan datos en la tabla sorteo
        If Me.ExisteListado > 0 Then
            'Pregunta si se quiere continuar con el sorteo anterior
            If MessageBox.Show("Existe un listado del sorteo anterior.¿Desea continuar con el sorteo?" _
                               , "Sorteo FFA", MessageBoxButtons.YesNo, MessageBoxIcon.Question _
                               , MessageBoxDefaultButton.Button1) = Windows.Forms.DialogResult.Yes Then
                Dim row As DataRow
                'Consulta el listado de los funcionarios sorteados
                Me.ConsultarListado()
                'Carga en el array el listado de funcionarios sorteados
                For Each row In Ds.Tables("Sorteo").Rows
                    Me.Ganador.Add(row("numeroSorteado"))
                Next
            Else
                'Borra el listado de los funcionarios sorteados
                Me.BorrarListado()
            End If
        End If
        CantidadParticipantes = Me.RecuperaParticipantes
        Dim configurationAppSettings As System.Configuration.AppSettingsReader = _
        New System.Configuration.AppSettingsReader
        Dim Conexion As String = CType(configurationAppSettings.GetValue("Conexion", GetType(System.String)), String)
        Dim SQLda As New SqlClient.SqlDataAdapter("SELECT * FROM Usuario WHERE Ativo = 1 AND participaSorteo = 1" _
                                                  , Conexion)
        Try
            'Establecemos la propiedad KeyPreview para que el formulario _   
            'intercepte cualquier intento de presión de tecla   
            Me.KeyPreview = True
            'Cargamos datos consultados en el dataset
            Ds.Clear()
            SQLda.Fill(Ds, "Usuario")
            ' MUESTRA ETIQUETA DE RANDOM.
            mostrarRandom(True)
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            SQLda.Dispose()
        End Try
    End Sub
#End Region

#Region "Click"
    Private Sub btnSortear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) _
    Handles btnSortear.Click
        If Me.btnSortear.Text = "&Sortear" Then
            Me.picImagen.Image = Nothing
            Me.lblNombre.Text = String.Empty
            Me.lblApellido.Text = String.Empty
            Me.btnSortear.Text = "&Detener"
            mostrarRandom(True)
            Dim Hilo As New System.Threading.Thread(AddressOf SortearParticipantes)
            Hilo.Start()
        Else
            Me.btnSortear.Text = "&Sortear"
            mostrarRandom(False)
        End If
    End Sub

    Private Sub BtnAceptar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) _
    Handles BtnAceptar.Click
        GrabarConfig()
    End Sub

    Private Sub BtnCancelar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BtnCancelar.Click
        GcAjuste.Visible = False
        btnSortear.Focus()
    End Sub

    Private Sub MnuCambiarFondo_Click1(ByVal sender As Object, ByVal e As System.EventArgs) _
    Handles MnuCambiarFondo.Click
        ModificarImagen()
    End Sub

    Private Sub MnuCambiarTamanho_Click(ByVal sender As Object, ByVal e As System.EventArgs) _
    Handles MnuCambiarTamanho.Click
        GcAjuste.Visible = True
        GcAjuste.BringToFront()
        TxtWidth.Text = My.MySettings.Default.Width
        TxtHeight.Text = My.MySettings.Default.Height
        TxtWidth.Focus()
    End Sub

    Private Sub MnuSalir_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles MnuSalir.Click
        Close()
    End Sub
#End Region

#Region "-FOCUS-"
    Private Sub Txt_GotFocus(ByVal sender As Object, ByVal e As System.EventArgs) _
    Handles TxtWidth.GotFocus, TxtHeight.GotFocus
        sender.selectAll()
    End Sub
#End Region

#Region "KeyDown"
    Private Sub Form1_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles Me.KeyDown
        'Verifica las teclas Alt - Ctrl y la A   
        If e.KeyCode = vbKeyControl Then Ctrl = True
        If e.KeyCode = vbKeyS Then S = True
        'Si las 3 variables están en True .. mostramos un mensaje   
        If Ctrl And S Then
            Me.Close()
            Form1_KeyUp(0, Nothing)
        End If
    End Sub
#End Region

#Region "KeyUp"
    Private Sub Form1_KeyUp(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles Me.KeyUp
        'Cuando se produce KeyUp ponemos las variables en false   
        Ctrl = False
        S = False
    End Sub
#End Region

#Region "Funciones y Procedimientos"
    Public Function RecuperaParticipantes() As Integer
        Dim retorno As Integer
        Dim Conexion As SqlClient.SqlConnection = Nothing
        Try
            Dim configurationAppSettings As System.Configuration.AppSettingsReader = New System.Configuration.AppSettingsReader
            Conexion = New SqlClient.SqlConnection(CType(configurationAppSettings.GetValue("Conexion", GetType(System.String)), String))
            Dim SQLcom As New SqlClient.SqlCommand("SELECT COUNT(Usuario) AS CantidadParticipantes FROM Usuario WHERE Ativo = 1 AND participaSorteo = 1", Conexion)
            SQLcom.CommandType = CommandType.Text
            Conexion.Open()
            retorno = SQLcom.ExecuteScalar
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Sorteo FFA", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            Conexion.Close()
        End Try
        Return retorno
    End Function

    Public Sub GuardarFuncionario(ByVal NumeroSorteado As Integer, ByVal idUsuario As Integer, ByVal Nombre As String)
        Dim Conexion As SqlClient.SqlConnection = Nothing
        Dim sql As String = Nothing

        Try
            Dim configurationAppSettings As System.Configuration.AppSettingsReader = New System.Configuration.AppSettingsReader
            Conexion = New SqlClient.SqlConnection(CType(configurationAppSettings.GetValue("Conexion", GetType(System.String)), String))
            Dim SQLcom As New SqlClient.SqlCommand("pa_insertarSorteo", Conexion)
            SQLcom.CommandType = CommandType.StoredProcedure
            With SQLcom.Parameters
                .Clear()
                .Add("@numeroSorteado", SqlDbType.Int).Value = NumeroSorteado
                .Add("@idUsuario", SqlDbType.Int).Value = idUsuario
                .Add("@nombre", SqlDbType.VarChar, 200).Value = Nombre
            End With
            Conexion.Open()
            SQLcom.ExecuteNonQuery()
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Sorteo FFA", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            Conexion.Close()
        End Try
    End Sub

    Private Sub GrabarConfig()
        My.MySettings.Default.Width = TxtWidth.Text
        My.MySettings.Default.Height = TxtHeight.Text
        My.Settings.Save()
        GcAjuste.Visible = False
        ' AJUSTAR IMAGEN.
        CenterImg()
    End Sub

    Private Sub CenterImg()
        picImagen.Size = New Size(CInt(My.MySettings.Default.Width), CInt(My.MySettings.Default.Height))
        picImagen.Left = (ClientSize.Width - picImagen.Width) / 2

        btnSortear.Focus()
    End Sub

    Public Sub ConsultarListado()
        Dim Conexion As SqlClient.SqlConnection = Nothing
        Try
            Dim configurationAppSettings As System.Configuration.AppSettingsReader = New System.Configuration.AppSettingsReader
            Conexion = New SqlClient.SqlConnection(CType(configurationAppSettings.GetValue("Conexion", GetType(System.String)), String))
            Dim SQLda As New SqlClient.SqlDataAdapter("pa_consultaListado", Conexion)
            SQLda.SelectCommand.CommandType = CommandType.StoredProcedure
            With SQLda.SelectCommand.Parameters
                .Clear()
                .Add("@opcion", SqlDbType.Int).Value = 1
            End With

            If Ds.Tables.IndexOf("Sorteo") <> -1 Then
                Ds.Tables("Sorteo").Clear()
            End If

            SQLda.Fill(Ds, "Sorteo")

        Catch ex As Exception
            MessageBox.Show(ex.Message, "Sorteo FFA", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            Conexion.Close()
        End Try
    End Sub

    Public Function ExisteListado() As Integer
        Dim Conexion As SqlClient.SqlConnection = Nothing
        Dim retorno As Integer = Nothing
        Try
            Dim configurationAppSettings As System.Configuration.AppSettingsReader = New System.Configuration.AppSettingsReader
            Conexion = New SqlClient.SqlConnection(CType(configurationAppSettings.GetValue("Conexion", GetType(System.String)), String))
            Dim SQLcom As New SqlClient.SqlCommand("pa_consultaListado", Conexion)
            SQLcom.CommandType = CommandType.StoredProcedure
            With SQLcom.Parameters
                .Clear()
                .Add("@opcion", SqlDbType.Int).Value = 2
            End With
            Conexion.Open()
            retorno = SQLcom.ExecuteScalar
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Sorteo FFA", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            Conexion.Close()
        End Try

        Return retorno
    End Function

    Public Sub BorrarListado()
        Dim Conexion As SqlClient.SqlConnection = Nothing
        Dim sql As String = Nothing

        Try
            Dim configurationAppSettings As System.Configuration.AppSettingsReader = New System.Configuration.AppSettingsReader
            Conexion = New SqlClient.SqlConnection(CType(configurationAppSettings.GetValue("Conexion", GetType(System.String)), String))
            Dim SQLcom As New SqlClient.SqlCommand("pa_consultaListado", Conexion)
            SQLcom.CommandType = CommandType.StoredProcedure
            With SQLcom.Parameters
                .Clear()
                .Add("@opcion", SqlDbType.Int).Value = 3
            End With
            Conexion.Open()
            SQLcom.ExecuteNonQuery()
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Sorteo FFA", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            Conexion.Close()
        End Try
    End Sub

    Private Sub SortearParticipantes()
        On Error Resume Next
        Me.btnSortear.Text = "&Detener"
        Me.NumeroSorteado = 0
        While Me.btnSortear.Text = "&Detener"
            mostrarRandom(True)
            Randomize()
            Dim CantidadElementos As Integer
            CantidadElementos = CantidadParticipantes
            NumeroSorteado = CInt(Int((CantidadElementos * Rnd())))
            Me.lblNumero.Text = NumeroSorteado
        End While
        If Not Me.Ganador.Contains(NumeroSorteado) Then
            Me.Ganador.Add(NumeroSorteado)
        Else
            Me.btnSortear.Text = "&Detener"
            SortearOtroParticipante()
        End If
        mostrarRandom(False)
        Call Me.ConsultaEntidad(NumeroSorteado)
        Premio = Premio + 1
        Nombre = Me.lblNombre.Text & " " & Me.lblApellido.Text
        Me.GuardarFuncionario(NumeroSorteado, Me.lblCodigo.Text, Nombre)
    End Sub

    Private Sub SortearOtroParticipante()
        CheckForIllegalCrossThreadCalls = False
        Me.btnSortear.Text = "&Detener"
        While 0 = 0
            mostrarRandom(True)
            Randomize()
            Dim CantidadElementos As Integer
            CantidadElementos = CantidadParticipantes
            NumeroSorteado = CInt(Int((CantidadElementos * Rnd())))
            Me.lblNumero.Text = NumeroSorteado
            If Not Me.Ganador.Contains(NumeroSorteado) Then
                Exit While
            End If
        End While
        mostrarRandom(False)
        Me.Ganador.Add(NumeroSorteado)
        Me.btnSortear.Text = "&Sortear"
    End Sub

    Private Sub ConsultaEntidad(ByVal Numero As Integer)
        On Error Resume Next
        Dim fot As Array
        mostrarRandom(False)
        fot = CType(Ds.Tables("Usuario").Rows(Numero).Item("Foto"), System.Array)
        Me.picImagen.Image = ConvertirFoto(fot)
        Me.lblNombre.Text = Ds.Tables("Usuario").Rows(Numero).Item("Nombre")
        Me.lblApellido.Text = Ds.Tables("Usuario").Rows(Numero).Item("Apellido")
        Me.lblCodigo.Text = Ds.Tables("Usuario").Rows(Numero).Item("idUsuario")
    End Sub

    Private Function ConvertirFoto(ByVal Foto As Object) As Object
        On Error Resume Next
        Dim retorno As Object = Nothing
        'Comprueba si existe la imagen
        If Not IsDBNull(Foto) Then
            'Conviente cadena de bits a imagen
            Dim arrImagen() As Byte = CType(Foto, Byte())
            Dim ms As New System.IO.MemoryStream(arrImagen)
            retorno = Image.FromStream(ms, True)
        End If
        Return retorno
    End Function

    Private Sub ModificarImagen()
        ' VARIABLES.
        Dim ObjImg As New OpenFileDialog

        With ObjImg
            .CheckFileExists = True
            .RestoreDirectory = True
            .Filter = "Image Files (*.jpg, *.png)|*.jpg;*.png"
            .Title = "Seleccione una imagen para el fondo ..."
            .ShowDialog()
        End With
        If ObjImg.FileName <> "" Then
            ' GRABA.
            My.MySettings.Default.ImgDir = ObjImg.FileName
            My.Settings.Save()

            CargarBackground()
        End If
    End Sub

    Private Sub CargarBackground()
        If File.Exists(My.MySettings.Default.ImgDir) Then
            picFondo.Image = New Bitmap(My.MySettings.Default.ImgDir)
            picFondo.SizeMode = PictureBoxSizeMode.StretchImage
            picImagen.Appearance.ImageBackground = New Bitmap(My.MySettings.Default.ImgDir)
            lblNumero.Appearance.ImageBackground = New Bitmap(My.MySettings.Default.ImgDir)
            lblNombre.Appearance.ImageBackground = New Bitmap(My.MySettings.Default.ImgDir)
            lblApellido.Appearance.ImageBackground = New Bitmap(My.MySettings.Default.ImgDir)
        Else
            picFondo.Image = New Bitmap(My.Resources.whitebackground1920x1200)
            picFondo.SizeMode = PictureBoxSizeMode.StretchImage
            picImagen.Appearance.ImageBackground = New Bitmap(My.Resources.whitebackground1920x1200)
            lblNumero.Appearance.ImageBackground = New Bitmap(My.Resources.whitebackground1920x1200)
            lblNombre.Appearance.ImageBackground = New Bitmap(My.Resources.whitebackground1920x1200)
            lblApellido.Appearance.ImageBackground = New Bitmap(My.Resources.whitebackground1920x1200)
        End If
        Refresh()

        btnSortear.Focus()
    End Sub

    Private Sub mostrarRandom(ByVal valor As Boolean)
        lblNumero.Visible = valor
        lblNombre.Visible = Not valor
    End Sub

    Private Sub HacerTransparente()


        picImagen.BackColor = Color.Transparent
        lblNumero.BackColor = Color.Transparent
        lblNombre.BackColor = Color.Transparent
    End Sub
#End Region

    Private Sub CambiarColorDeTextoToolStripMenuItem_Click(ByVal sender As System.Object _
                                                           , ByVal e As System.EventArgs) _
                                                           Handles CambiarColorDeTextoToolStripMenuItem.Click
        If CdSorteo.ShowDialog = Windows.Forms.DialogResult.OK Then
            lblNombre.Appearance.ForeColor = CdSorteo.Color
            lblNumero.Appearance.ForeColor = CdSorteo.Color
            lblApellido.Appearance.ForeColor = CdSorteo.Color
        End If
    End Sub

    Private Sub EliminarFondoToolStripMenuItem_Click(ByVal sender As System.Object _
                                                     , ByVal e As System.EventArgs) _
                                                     Handles EliminarFondoToolStripMenuItem.Click
        picFondo.Image = New Bitmap(My.Resources.whitebackground1920x1200)
        picFondo.SizeMode = PictureBoxSizeMode.StretchImage
        picImagen.Appearance.ImageBackground = New Bitmap(My.Resources.whitebackground1920x1200)
        lblNumero.Appearance.ImageBackground = New Bitmap(My.Resources.whitebackground1920x1200)
        lblNombre.Appearance.ImageBackground = New Bitmap(My.Resources.whitebackground1920x1200)
        lblApellido.Appearance.ImageBackground = New Bitmap(My.Resources.whitebackground1920x1200)
        Refresh()
    End Sub
End Class
