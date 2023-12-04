Public Class frmPrincipal
    Private Sub btnSorteo1_Click(sender As Object, e As EventArgs) Handles btnSorteo1.Click
        If MessageBox.Show("¿Desea iniciar la pantalla de Sorteo 1?", "Sorteo FFA 2023", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) = DialogResult.Yes Then
            Using f As New frmSorteadorFFA2022()
                f.ShowDialog()
            End Using
        End If
    End Sub
End Class