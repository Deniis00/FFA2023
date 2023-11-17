Public Class ListadoSorteo
#Region "-CONSTRUCTOR-"
    Public Sub New(ByVal ParNroSorteo As Integer, ByVal ParNombreApellido As String)
        VarNroSorteo = ParNroSorteo
        VarNombreApellido = ParNombreApellido
    End Sub
#End Region

#Region "PROPIEDADES"
    Private VarNroSorteo As Integer
    Property PropNroSorteo() As Integer
        Get
            Return VarNroSorteo
        End Get
        Set(ByVal value As Integer)
            VarNroSorteo = value
        End Set
    End Property

    Private VarNombreApellido As String
    Property PropNombreApellido() As String
        Get
            Return VarNombreApellido
        End Get
        Set(ByVal value As String)
            VarNombreApellido = value
        End Set
    End Property
#End Region
End Class
