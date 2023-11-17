Module Modulo

    Public Sub main()
        If MessageBox.Show("¿Desea iniciar la pantalla de Sorteo?", "SorteoFFA", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) = DialogResult.Yes Then
            Using f As New frmSorteadorFFA2022()
                f.ShowDialog()
            End Using
        Else
            Using f As New frmFoto()
                f.ShowDialog()
            End Using
        End If
    End Sub
End Module
