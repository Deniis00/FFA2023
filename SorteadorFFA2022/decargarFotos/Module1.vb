Imports System.IO
Imports System.Net

Module Module1

    Sub Main()
        Dim url As String = "http://pgs.casanissei.com:180/FotosFuncionariosOficial/2364.jpg"

        ' Especifica la carpeta donde deseas guardar la imagen descargada
        Dim carpetaDestino As String = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Desktop), "ImagenesDescargadas")
        Directory.CreateDirectory(carpetaDestino)

        ' Llama a la función para descargar la imagen
        DescargarImagen(url, Path.Combine(carpetaDestino, "imagen.jpg"))

        Console.ReadLine()


    End Sub

    Private Sub DescargarImagen(url As String, rutaArchivo As String)
        Try
            Using cliente As New WebClient()
                ' Descarga la imagen y la guarda en la ubicación especificada
                cliente.DownloadFile(url, rutaArchivo)
            End Using
        Catch ex As Exception
            Console.WriteLine("Error al descargar la imagen: " & ex.Message)
        End Try
    End Sub


End Module
