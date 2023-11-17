Imports System.Data
Imports System.Data.SqlClient
Imports System.ComponentModel

Public Class frmFoto
    Private ConexionSeguridad As String
    Private ConexionComun As String
    Private idUsuario As Integer
    Dim DsSorteo As New BindingList(Of ListadoSorteo)
    Dim VarFecha As Date = Nothing

    Private Sub frmFoto_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        LeerCadena()
        'CargarComboDpto()
        Me.btnSiguiente_Click(New Object, New System.EventArgs)
    End Sub

    Private Sub LeerCadena()
        Dim configurationAppSettings As System.Configuration.AppSettingsReader = _
        New System.Configuration.AppSettingsReader
        Me.ConexionSeguridad = CType(configurationAppSettings.GetValue("Conexion", GetType(System.String)), String)
        'Me.ConexionComun = CType(configurationAppSettings.GetValue("ConexionComun", GetType(System.String)), String)
    End Sub

    Private Sub CargarDatos(ByVal Siguiente As Boolean)
        Dim SQLcon As SqlConnection = Nothing
        Dim SQLcom As SqlCommand = Nothing
        Dim SQLdr As SqlDataReader = Nothing
        Try
            SQLcon = New SqlConnection(Me.ConexionSeguridad)
            If Siguiente Then
                SQLcom = New SqlCommand("SELECT TOP 1 idUsuario, Usuario, Nombre, Apellido, idDepartamento" _
                                        & ", Foto, participaSorteo, Ativo FROM Usuario WHERE idUsuario > " _
                                        & Me.idUsuario.ToString & " AND esFuncionario = 1 AND ativo = 1 " _
                                        & "ORDER BY idUsuario", SQLcon)
            Else
                SQLcom = New SqlCommand("SELECT TOP 1 idUsuario, Usuario, Nombre, Apellido, idDepartamento" _
                                        & ", Foto, participaSorteo, Ativo FROM Usuario WHERE idUsuario < " _
                                        & Me.idUsuario.ToString & " AND esFuncionario = 1 AND ativo = 1" _
                                        & " ORDER BY idUsuario DESC", SQLcon)
            End If
            SQLcon.Open()
            SQLdr = SQLcom.ExecuteReader
            If SQLdr.Read Then
                Me.idUsuario = SQLdr("idUsuario")
                Me.txtNombre.Text = SQLdr("Nombre")
                Me.txtApellido.Text = SQLdr("Apellido")
                'Me.cboDepartamento.SelectedValue = IIf(SQLdr("idDepartamento") Is DBNull.Value, -1, SQLdr("idDepartamento"))
                Me.txtInicioSesion.Text = SQLdr("Usuario")
                Me.chkParticipaSorteo.Checked = IIf(SQLdr("participaSorteo") Is DBNull.Value, False _
                                                    , SQLdr("participaSorteo"))
                Me.chkActivo.Checked = IIf(SQLdr("Ativo") Is DBNull.Value, False, SQLdr("Ativo"))

                If Not (IsDBNull(SQLdr("Foto")) Or SQLdr("Foto") Is Nothing) Then
                    Dim arrImagen() As Byte = CType(SQLdr("Foto"), Byte())
                    Dim ms As New System.IO.MemoryStream(arrImagen)
                    Me.picFoto.Image = System.Drawing.Image.FromStream(ms, True)
                Else
                    Me.picFoto.Image = Nothing
                End If

                If Not Me.picFoto.Image Is Nothing Then
                    Me.btnFoto.Visible = False
                Else
                    Me.btnFoto.Visible = True
                End If
            End If
            Me.Text = "Foto"
        Catch ex As Exception
            MessageBox.Show("Ha ocurrido un error al interta obtener los datos del funcionario: " & ex.Message _
                            , "Sorteo FFA", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            If Not SQLdr Is Nothing Then
                SQLdr.Close()
                SQLdr = Nothing
            End If
            If Not SQLcon Is Nothing Then
                SQLcon.Close()
                SQLcon.Dispose()
                SQLcon = Nothing
            End If
            If Not SQLcom Is Nothing Then
                SQLcom.Dispose()
                SQLcom = Nothing
            End If
        End Try
    End Sub

    Private Sub btnSiguiente_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) _
    Handles btnSiguiente.Click
        CargarDatos(True)
    End Sub

    Private Sub btnAnterior_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) _
    Handles btnAnterior.Click
        CargarDatos(False)
    End Sub

    Private Sub CargaFoto()
        Dim imagen As New OpenFileDialog
        imagen.Filter = "Todos los archivos de Imagen (*.gif;*.bmp;*.jpg)|*.gif;*.bmp;*.jpg"
        'imagen.ShowDialog()
        If (imagen.ShowDialog.Equals(Windows.Forms.DialogResult.OK)) Then
            Me.picFoto.Image = Image.FromFile(imagen.FileName)
            Me.btnFoto.Visible = False
            Me.Text = "Foto *"
        End If
    End Sub

    Private Sub btnFoto_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFoto.Click
        Me.CargaFoto()
    End Sub

    Private Sub Actualizar()
        Dim SQLcon As SqlConnection = Nothing
        Dim SQLcom As SqlCommand = Nothing
        Try
            SQLcon = New SqlConnection(Me.ConexionSeguridad)
            SQLcom = New SqlCommand("UPDATE Usuario SET Nombre = @Nombre, Apellido = @Apellido" _
                                    & ", participaSorteo = @participaSorteo, Ativo = @Ativo" _
                                    & ", Foto = @Foto WHERE idUsuario = @idUsuario", SQLcon)
            SQLcom.Parameters.Clear()
            SQLcom.Parameters.Add("@Nombre", SqlDbType.VarChar, 50).Value = Me.txtNombre.Text
            SQLcom.Parameters.Add("@Apellido", SqlDbType.VarChar, 50).Value = Me.txtApellido.Text
            SQLcom.Parameters.Add("@Ativo", SqlDbType.Bit).Value = Me.chkActivo.Checked
            SQLcom.Parameters.Add("@participaSorteo", SqlDbType.Bit).Value = Me.chkParticipaSorteo.Checked
            'SQLcom.Parameters.Add("@idDepartamento", SqlDbType.Int).Value = IIf(Me.cboDepartamento.SelectedValue Is Nothing, DBNull.Value, Me.cboDepartamento.SelectedValue)
            SQLcom.Parameters.Add("@idUsuario", SqlDbType.Int).Value = Me.idUsuario
            If Not Me.picFoto.Image Is Nothing Then
                Dim ms As New System.IO.MemoryStream
                picFoto.Image.Save(ms, picFoto.Image.RawFormat)
                Dim arrImagen() As Byte = ms.GetBuffer
                ms.Close()
                SQLcom.Parameters.Add("@Foto", SqlDbType.Image).Value = arrImagen
            Else
                SQLcom.Parameters.Add("@Foto", SqlDbType.Image).Value = DBNull.Value
            End If
            SQLcon.Open()
            SQLcom.ExecuteNonQuery()
            Me.Text = "Foto"
        Catch ex As Exception
            MessageBox.Show("Ha ocurrido un error al intentar actualizar los datos del funcionario: " _
                            & ex.Message, "Sorteo FFA", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            If Not SQLcon Is Nothing Then
                SQLcon.Close()
                SQLcon.Dispose()
                SQLcon = Nothing
            End If
            If Not SQLcom Is Nothing Then
                SQLcom.Dispose()
                SQLcom = Nothing
            End If
        End Try
    End Sub

    Private Sub btnGuardar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) _
    Handles btnGuardar.Click
        Me.Actualizar()
    End Sub

    Private Sub QuitarFotoToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) _
    Handles QuitarFotoToolStripMenuItem.Click
        Me.picFoto.Image = Nothing
        Me.btnFoto.Visible = True
    End Sub

    Private Sub txtNombre_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) _
    Handles txtNombre.TextChanged
        Me.Text = "Foto *"
    End Sub

    Private Sub txtApellido_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) _
    Handles txtApellido.TextChanged
        Me.Text = "Foto *"
    End Sub

    Private Sub cboDepartamento_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Me.Text = "Foto *"
    End Sub

    Private Sub chkParticipaSorteo_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) _
    Handles chkParticipaSorteo.CheckedChanged
        Me.Text = "Foto *"
    End Sub

    Private Sub chkActivo_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) _
    Handles chkActivo.CheckedChanged
        Me.Text = "Foto *"
    End Sub

    Private Sub ObtenerSorteo()
        ' VARIABLES.
        Dim SQLcon As SqlConnection = Nothing
        Dim SQLcom As SqlCommand = Nothing
        Dim SQLdr As SqlDataReader = Nothing
        Dim VarComando As String = "SELECT idSorteo, nombre, fecha FROM sorteo ORDER BY idSorteo ASC "
        Try
            SQLcon = New SqlConnection(ConexionSeguridad)
            SQLcom = New SqlCommand(VarComando, SQLcon)
            SQLcom.CommandType = CommandType.Text
            SQLcom.CommandTimeout = 800
            ' ABRE LA CONEXION Y EJECUTA LA OPERACION.
            SQLcon.Open()
            SQLdr = SQLcom.ExecuteReader
            ' LIMPIA EL LISTADO.
            DsSorteo.Clear()
            ' CARGA LOS VALORES.
            While SQLdr.Read
                DsSorteo.Add(New ListadoSorteo(SQLdr("idSorteo") _
                                               , IIf(SQLdr("nombre") Is DBNull.Value, "", SQLdr("nombre"))))
                ' FECHA.
                VarFecha = IIf(SQLdr("fecha") Is DBNull.Value, DateTime.Now, SQLdr("fecha"))
            End While
        Catch ex As Exception
            MessageBox.Show("No se puede imprimir", "ATENCION", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End Try
    End Sub

    Private Function RetornaMes(ByVal ParMes As Integer) As String
        ' VARIABLES.
        Dim VarRetorno As String = Nothing
        ' OBTIENE EL MES.
        Select Case ParMes
            Case 1
                VarRetorno = "ENERO"
            Case 2
                VarRetorno = "FEBRERO"
            Case 3
                VarRetorno = "MARZO"
            Case 4
                VarRetorno = "ABRIL"
            Case 5
                VarRetorno = "MAYO"
            Case 6
                VarRetorno = "JUNIO"
            Case 7
                VarRetorno = "JULIO"
            Case 8
                VarRetorno = "AGOSTO"
            Case 9
                VarRetorno = "SETIEMBRE"
            Case 10
                VarRetorno = "OCTUBRE"
            Case 11
                VarRetorno = "NOVIEMBRE"
            Case 12
                VarRetorno = "DICIEMBRE"
        End Select
        ' RETORNA EL VALOR OBTENIDO.
        Return VarRetorno
    End Function

    Private Sub Imprimir()
        ' VARIABLES.
        Dim ObjRep As New RptSorteo
        Dim ObjMsj As DialogResult = Nothing
        Try
            ' OBTIENE EL LISTADO DEL SORTEO.
            ObtenerSorteo()
            ' VERIFICA SI HAY REGISTROS.
            If DsSorteo.Count > 0 Then
                ObjRep.LblTituloSorteo.Text = "SORTEO " & RetornaMes(VarFecha.Month) & " DE " _
                & VarFecha.Year.ToString
                ObjRep.DataSource = DsSorteo
                ObjRep.CreateDocument()
                ObjRep.ShowPrintingWarnings = False
                ObjRep.PrintDialog()
            Else
                MessageBox.Show("No existen registros para la impresión", "ATENCION", MessageBoxButtons.OK _
                            , MessageBoxIcon.Error)
            End If
        Catch ex As Exception
            MessageBox.Show("No se pudo imprimir el listado", "ATENCION", MessageBoxButtons.OK _
                            , MessageBoxIcon.Error)
        End Try
    End Sub

    Private Sub frmFoto_KeyDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyEventArgs) _
    Handles MyBase.KeyDown
        If e.Control AndAlso e.KeyCode = Keys.P Then
            e.Handled = True
            Imprimir()
        End If
    End Sub
End Class