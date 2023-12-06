<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class frmPrincipal
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
        Me.btnSorteo1 = New DevExpress.XtraEditors.SimpleButton()
        Me.btnSorteo2 = New DevExpress.XtraEditors.SimpleButton()
        Me.SuspendLayout()
        '
        'btnSorteo1
        '
        Me.btnSorteo1.Location = New System.Drawing.Point(98, 97)
        Me.btnSorteo1.Name = "btnSorteo1"
        Me.btnSorteo1.Size = New System.Drawing.Size(89, 23)
        Me.btnSorteo1.TabIndex = 0
        Me.btnSorteo1.Text = "Sorteo Entrada"
        '
        'btnSorteo2
        '
        Me.btnSorteo2.Location = New System.Drawing.Point(98, 141)
        Me.btnSorteo2.Name = "btnSorteo2"
        Me.btnSorteo2.Size = New System.Drawing.Size(89, 23)
        Me.btnSorteo2.TabIndex = 1
        Me.btnSorteo2.Text = "Sorteo Principal"
        '
        'frmPrincipal
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(284, 261)
        Me.Controls.Add(Me.btnSorteo2)
        Me.Controls.Add(Me.btnSorteo1)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmPrincipal"
        Me.ShowIcon = False
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents btnSorteo1 As DevExpress.XtraEditors.SimpleButton
    Friend WithEvents btnSorteo2 As DevExpress.XtraEditors.SimpleButton
End Class
