﻿Imports System.ComponentModel
Imports DevExpress.XtraEditors
Imports Newtonsoft.Json
Imports Newtonsoft.Json.Linq
Imports RestSharp

Public Class ListadoSorteoApi
#Region "-Propiedades-"
    Private _id As Integer
    Public Property Id() As Integer
        Get
            Return _id
        End Get
        Set(ByVal value As Integer)
            _id = value
        End Set
    End Property

    Private _codigo_funcionario As Integer
    Public Property codigo_funcionario() As Integer
        Get
            Return _codigo_funcionario
        End Get
        Set(ByVal value As Integer)
            _codigo_funcionario = value
        End Set
    End Property

    Private _nombre_funcionario As String
    Public Property Nombre_funcionario() As String
        Get
            Return _nombre_funcionario
        End Get
        Set(ByVal value As String)
            _nombre_funcionario = value
        End Set
    End Property

#End Region


#Region "-Métodos-"
    Public Shared Function obtenerListaSorteo(tipoSorteo As Integer) As BindingList(Of ListadoSorteoApi)
        Dim retorno As New BindingList(Of ListadoSorteoApi)

        Try

            Dim endpointStr As String = ""

            If tipoSorteo = 1 Then
                endpointStr = "funcionarios_para_sorteo"
            Else
                endpointStr = "funcionarios_para_sorteo2"
            End If

            Dim client = New RestClient(My.MySettings.Default.endpintBase.ToString + endpointStr)
            client.Timeout = -1
            Dim request = New RestRequest(Method.GET)

            Dim response As IRestResponse = client.Execute(request)

            Dim resultAPi As Root = JsonConvert.DeserializeObject(Of Root)(response.Content)


            retorno = resultAPi.data

        Catch ex As Exception
            XtraMessageBox.Show("Error al obtener listado de sorteo" & vbNewLine & "Motivo : " & ex.Message, "Error!", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End Try

        Return retorno
    End Function

    Public Shared Sub actualizarSorteado(tipoSorteo As Integer, sorteado As ListadoSorteoApi)
        Dim retorno As New BindingList(Of ListadoSorteoApi)

        Try

            Dim endpointStr As String = ""

            If tipoSorteo = 1 Then
                endpointStr = "registrar_sorteado/" + sorteado.Id.ToString
            Else
                endpointStr = "registrar_sorteado2/" + sorteado.Id.ToString
            End If

            Dim urlEndpoint As String = My.MySettings.Default.endpintBase.ToString + endpointStr
            Dim client = New RestClient(urlEndpoint)
            client.Timeout = -1
            Dim request = New RestRequest(Method.GET)

            Dim response As IRestResponse = client.Execute(request)

        Catch ex As Exception
            XtraMessageBox.Show("Error al obtener listado de sorteo" & vbNewLine & "Motivo : " & ex.Message, "Error!", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End Try


    End Sub


#End Region


End Class



Public Class Datum
        Public Property id As Integer
        Public Property id_funcionario As Integer
        Public Property nombre_funcionario As String
    End Class

Public Class Root
    Public Property data As BindingList(Of ListadoSorteoApi)
End Class
