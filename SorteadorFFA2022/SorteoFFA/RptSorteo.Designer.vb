<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Public Class RptSorteo
    Inherits DevExpress.XtraReports.UI.XtraReport

    'XtraReport overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Designer
    'It can be modified using the Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Me.Detail = New DevExpress.XtraReports.UI.DetailBand
        Me.XrTable2 = New DevExpress.XtraReports.UI.XRTable
        Me.XrTableRow2 = New DevExpress.XtraReports.UI.XRTableRow
        Me.XrTableCell1 = New DevExpress.XtraReports.UI.XRTableCell
        Me.XrTableCell2 = New DevExpress.XtraReports.UI.XRTableCell
        Me.PageHeader = New DevExpress.XtraReports.UI.PageHeaderBand
        Me.LblTituloSorteo = New DevExpress.XtraReports.UI.XRLabel
        Me.XrTable1 = New DevExpress.XtraReports.UI.XRTable
        Me.XrTableRow1 = New DevExpress.XtraReports.UI.XRTableRow
        Me.LblTituloOrdenSorteo = New DevExpress.XtraReports.UI.XRTableCell
        Me.LblNombreApellido = New DevExpress.XtraReports.UI.XRTableCell
        Me.PageFooter = New DevExpress.XtraReports.UI.PageFooterBand
        Me.XrPageBreak1 = New DevExpress.XtraReports.UI.XRPageBreak
        Me.XrPageInfo1 = New DevExpress.XtraReports.UI.XRPageInfo
        Me.BindingSource1 = New System.Windows.Forms.BindingSource(Me.components)
        CType(Me.XrTable2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.XrTable1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.BindingSource1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me, System.ComponentModel.ISupportInitialize).BeginInit()
        '
        'Detail
        '
        Me.Detail.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrTable2})
        Me.Detail.Font = New System.Drawing.Font("Arial", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Detail.Height = 25
        Me.Detail.Name = "Detail"
        Me.Detail.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.Detail.StylePriority.UseFont = False
        Me.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'XrTable2
        '
        Me.XrTable2.Font = New System.Drawing.Font("Arial", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.XrTable2.Location = New System.Drawing.Point(8, 0)
        Me.XrTable2.Name = "XrTable2"
        Me.XrTable2.Rows.AddRange(New DevExpress.XtraReports.UI.XRTableRow() {Me.XrTableRow2})
        Me.XrTable2.Size = New System.Drawing.Size(608, 25)
        Me.XrTable2.StylePriority.UseBackColor = False
        Me.XrTable2.StylePriority.UseBorders = False
        Me.XrTable2.StylePriority.UseFont = False
        Me.XrTable2.StylePriority.UseTextAlignment = False
        Me.XrTable2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'XrTableRow2
        '
        Me.XrTableRow2.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.XrTableCell1, Me.XrTableCell2})
        Me.XrTableRow2.Name = "XrTableRow2"
        Me.XrTableRow2.Weight = 1
        '
        'XrTableCell1
        '
        Me.XrTableCell1.DataBindings.AddRange(New DevExpress.XtraReports.UI.XRBinding() {New DevExpress.XtraReports.UI.XRBinding("Text", Nothing, "PropNroSorteo", "")})
        Me.XrTableCell1.Name = "XrTableCell1"
        Me.XrTableCell1.Text = "XrTableCell1"
        Me.XrTableCell1.Weight = 0.4375
        '
        'XrTableCell2
        '
        Me.XrTableCell2.DataBindings.AddRange(New DevExpress.XtraReports.UI.XRBinding() {New DevExpress.XtraReports.UI.XRBinding("Text", Nothing, "PropNombreApellido", "")})
        Me.XrTableCell2.Name = "XrTableCell2"
        Me.XrTableCell2.Padding = New DevExpress.XtraPrinting.PaddingInfo(10, 0, 0, 0, 100.0!)
        Me.XrTableCell2.StylePriority.UsePadding = False
        Me.XrTableCell2.StylePriority.UseTextAlignment = False
        Me.XrTableCell2.Text = "XrTableCell2"
        Me.XrTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.XrTableCell2.Weight = 1.5625
        '
        'PageHeader
        '
        Me.PageHeader.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.LblTituloSorteo, Me.XrTable1})
        Me.PageHeader.Name = "PageHeader"
        Me.PageHeader.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'LblTituloSorteo
        '
        Me.LblTituloSorteo.Font = New System.Drawing.Font("Arial", 20.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LblTituloSorteo.Location = New System.Drawing.Point(67, 8)
        Me.LblTituloSorteo.Name = "LblTituloSorteo"
        Me.LblTituloSorteo.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.LblTituloSorteo.Size = New System.Drawing.Size(500, 33)
        Me.LblTituloSorteo.StylePriority.UseFont = False
        Me.LblTituloSorteo.StylePriority.UseTextAlignment = False
        Me.LblTituloSorteo.Text = "SORTEO NOVIEMBRE DE 2012"
        Me.LblTituloSorteo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter
        '
        'XrTable1
        '
        Me.XrTable1.BackColor = System.Drawing.Color.LightGray
        Me.XrTable1.Borders = CType((((DevExpress.XtraPrinting.BorderSide.Left Or DevExpress.XtraPrinting.BorderSide.Top) _
                    Or DevExpress.XtraPrinting.BorderSide.Right) _
                    Or DevExpress.XtraPrinting.BorderSide.Bottom), DevExpress.XtraPrinting.BorderSide)
        Me.XrTable1.Font = New System.Drawing.Font("Arial", 14.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.XrTable1.Location = New System.Drawing.Point(8, 67)
        Me.XrTable1.Name = "XrTable1"
        Me.XrTable1.Rows.AddRange(New DevExpress.XtraReports.UI.XRTableRow() {Me.XrTableRow1})
        Me.XrTable1.Size = New System.Drawing.Size(608, 33)
        Me.XrTable1.StylePriority.UseBackColor = False
        Me.XrTable1.StylePriority.UseBorders = False
        Me.XrTable1.StylePriority.UseFont = False
        Me.XrTable1.StylePriority.UseTextAlignment = False
        Me.XrTable1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'XrTableRow1
        '
        Me.XrTableRow1.Cells.AddRange(New DevExpress.XtraReports.UI.XRTableCell() {Me.LblTituloOrdenSorteo, Me.LblNombreApellido})
        Me.XrTableRow1.Name = "XrTableRow1"
        Me.XrTableRow1.Weight = 1
        '
        'LblTituloOrdenSorteo
        '
        Me.LblTituloOrdenSorteo.Name = "LblTituloOrdenSorteo"
        Me.LblTituloOrdenSorteo.Text = "Orden Sorteo"
        Me.LblTituloOrdenSorteo.Weight = 0.4375
        '
        'LblNombreApellido
        '
        Me.LblNombreApellido.Name = "LblNombreApellido"
        Me.LblNombreApellido.Padding = New DevExpress.XtraPrinting.PaddingInfo(10, 0, 0, 0, 100.0!)
        Me.LblNombreApellido.StylePriority.UsePadding = False
        Me.LblNombreApellido.StylePriority.UseTextAlignment = False
        Me.LblNombreApellido.Text = "Nombre y Apellido"
        Me.LblNombreApellido.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft
        Me.LblNombreApellido.Weight = 1.5625
        '
        'PageFooter
        '
        Me.PageFooter.Controls.AddRange(New DevExpress.XtraReports.UI.XRControl() {Me.XrPageBreak1, Me.XrPageInfo1})
        Me.PageFooter.Height = 30
        Me.PageFooter.Name = "PageFooter"
        Me.PageFooter.Padding = New DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100.0!)
        Me.PageFooter.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft
        '
        'XrPageBreak1
        '
        Me.XrPageBreak1.Location = New System.Drawing.Point(0, 17)
        Me.XrPageBreak1.Name = "XrPageBreak1"
        '
        'XrPageInfo1
        '
        Me.XrPageInfo1.Location = New System.Drawing.Point(267, 0)
        Me.XrPageInfo1.Name = "XrPageInfo1"
        Me.XrPageInfo1.Padding = New DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100.0!)
        Me.XrPageInfo1.Size = New System.Drawing.Size(100, 25)
        Me.XrPageInfo1.StylePriority.UseTextAlignment = False
        Me.XrPageInfo1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter
        '
        'BindingSource1
        '
        Me.BindingSource1.DataSource = GetType(SorteoFFA2022.ListadoSorteo)
        '
        'RptSorteo
        '
        Me.Bands.AddRange(New DevExpress.XtraReports.UI.Band() {Me.Detail, Me.PageHeader, Me.PageFooter})
        Me.DataSource = Me.BindingSource1
        Me.Font = New System.Drawing.Font("Arial", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.PageHeight = 1169
        Me.PageWidth = 827
        Me.PaperKind = System.Drawing.Printing.PaperKind.A4
        Me.Version = "9.2"
        CType(Me.XrTable2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.XrTable1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.BindingSource1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me, System.ComponentModel.ISupportInitialize).EndInit()

    End Sub
    Friend WithEvents Detail As DevExpress.XtraReports.UI.DetailBand
    Friend WithEvents PageHeader As DevExpress.XtraReports.UI.PageHeaderBand
    Friend WithEvents PageFooter As DevExpress.XtraReports.UI.PageFooterBand
    Friend WithEvents LblTituloSorteo As DevExpress.XtraReports.UI.XRLabel
    Friend WithEvents XrTable1 As DevExpress.XtraReports.UI.XRTable
    Friend WithEvents XrTableRow1 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents LblTituloOrdenSorteo As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents LblNombreApellido As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTable2 As DevExpress.XtraReports.UI.XRTable
    Friend WithEvents XrTableRow2 As DevExpress.XtraReports.UI.XRTableRow
    Friend WithEvents XrTableCell1 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrTableCell2 As DevExpress.XtraReports.UI.XRTableCell
    Friend WithEvents XrPageBreak1 As DevExpress.XtraReports.UI.XRPageBreak
    Friend WithEvents XrPageInfo1 As DevExpress.XtraReports.UI.XRPageInfo
    Friend WithEvents BindingSource1 As System.Windows.Forms.BindingSource
End Class
