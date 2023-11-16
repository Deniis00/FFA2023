Imports System.ComponentModel
Imports System.Linq
Imports SorteoFFA2022

Public Class frmSorteadorFFA2022

#Region "-Variables-"
    Dim listSorteo As New BindingList(Of ListadoSorteoApi)
    Dim listSorteado As New BindingList(Of ListadoSorteoApi)
    Dim random As New Random
    Dim numeroSorteado As Integer = 0


#End Region

    Private Sub frmSorteadorFFA2022_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CheckForIllegalCrossThreadCalls = False

        listSorteo = ListadoSorteoApi.obtenerListaSorteo()
        lblNombre.Visible = False
        pcFotoFuncionario.Visible = False
        '  pnlFoto.Visible = False
        lblcantParticipantes.Text = listSorteo.Count.ToString + " participantes"

        Dim gp As System.Drawing.Drawing2D.GraphicsPath = New System.Drawing.Drawing2D.GraphicsPath()
        gp.AddEllipse(0, 0, pcFotoFuncionario.Width - 3, pcFotoFuncionario.Height - 3)
        Dim rg As Region = New Region(gp)
        pcFotoFuncionario.Region = rg

    End Sub


    Private Sub btnSortear_Click(sender As Object, e As EventArgs) Handles btnSortear.Click
        If Me.btnSortear.Text = "&Sortear" Then

            Me.pcFotoFuncionario.Visible = False
            Me.lblNombre.Visible = False
            '   pnlFoto.Visible = False


            Me.pcFotoFuncionario.Image = Nothing
            Me.lblNombre.Text = String.Empty
            Me.btnSortear.Text = "&Detener"
            mostrarRandom(True)

            Dim Hilo As New System.Threading.Thread(AddressOf SortearParticipantes)
            Hilo.Start()

        Else
            Me.btnSortear.Text = "&Sortear"

        End If
    End Sub

    Private Sub SortearParticipantes()

        Dim id As Integer = 0
        Dim sorteado As New ListadoSorteoApi

        While Me.btnSortear.Text = "&Detener"


            numeroSorteado = 0

            'Dim uni As String = random.Next(0, 10)
            'Dim dec As String = random.Next(0, 10)
            'Dim cen As String = random.Next(0, 10)
            'Dim uni_m As String = random.Next(0, 9)


            id = random.Next(0, listSorteo.Count - 1)

            sorteado = listSorteo.Item(id)

            Dim num As String = sorteado.Id_funcionario.ToString.PadLeft(4, "0")


            Me.txtunidad.Text = num.Substring(3, 1)
            Me.txtdecena.Text = num.Substring(2, 1)
            Me.txtcentena.Text = num.Substring(1, 1)
            Me.txtunidadMil.Text = num.Substring(0, 1)



        End While






        ''Dim sorteado As ListadoSorteoApi = listSorteo.FirstOrDefault(Function(x) x.Id_funcionario = numeroSorteado)

        If sorteado IsNot Nothing Then
            CargarNombre(sorteado)
            listSorteado.Add(sorteado)
            listSorteo.Remove(sorteado)
            lblcantParticipantes.Text = listSorteo.Count.ToString + " participantes"
        Else
            Me.btnSortear.Text = "&Detener"
            volverASortear()

        End If







    End Sub

    Private Sub volverASortear()
        While Me.btnSortear.Text = "&Detener"
            numeroSorteado = 0
            Dim uni As String = random.Next(0, 10) ''CInt(Math.Floor((upperbound - lowerbound + 1) * Rnd())) + lowerbound
            Dim dec As String = random.Next(0, 10)
            Dim cen As String = random.Next(0, 10)
            Dim uni_m As String = random.Next(0, 9)

            Me.txtunidad.Text = uni.ToString
            Me.txtdecena.Text = dec.ToString
            Me.txtcentena.Text = cen.ToString
            Me.txtunidadMil.Text = uni_m.ToString

            numeroSorteado = CInt(uni_m + cen + dec + uni)

            Dim sorteado As ListadoSorteoApi = listSorteo.FirstOrDefault(Function(x) x.Id_funcionario = numeroSorteado)

            If sorteado IsNot Nothing Then
                CargarNombre(sorteado)
                listSorteado.Add(sorteado)
                listSorteo.Remove(sorteado)
                Me.btnSortear.Text = "&Sortear"
                lblcantParticipantes.Text = listSorteo.Count.ToString + " participantes"
            End If
        End While
    End Sub

    Private Sub CargarNombre(sorteado As ListadoSorteoApi)

        '' pcFotoFuncionario.LoadAsync("http://pgs.casanissei.com:180/FotosFuncionariosOficial/" & sorteado.Id_funcionario & ".jpg")

        Dim imagen As Image = My.Resources.ResourceManager.GetObject("_" + sorteado.Id_funcionario.ToString)

        pcFotoFuncionario.Image = imagen
        pcFotoFuncionario.SizeMode = PictureBoxSizeMode.StretchImage

        '' pcFotoFuncionario.Load =My.Resources._2364
        lblNombre.Text = sorteado.Nombre_funcionario



        pcFotoFuncionario.Visible = True
        lblNombre.Visible = True
        '  pnlFoto.Visible = True
        mostrarRandom(False)
    End Sub

    Private Sub mostrarRandom(ByVal valor As Boolean)
        txtunidad.Visible = valor
        txtdecena.Visible = valor
        txtcentena.Visible = valor
        txtunidadMil.Visible = valor
    End Sub


End Class