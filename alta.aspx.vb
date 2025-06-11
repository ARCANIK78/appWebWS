Imports appWebWS.WS
Public Class alta
    Inherits System.Web.UI.Page
    Dim SeguroID As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtCI.Text = Session("CI")
        txtNOmbre.Text = Session("NombreCompleto")
        Cargar()

    End Sub

    Public Sub Cargar()
        Dim ws As New WS.WebService1SoapClient
        Dim ds As New WS.db.TSegurosDataTable
        ds = ws.MostrarSeguros()
        cbSeguro.DataSource = ds
        SeguroID = cbSeguro.SelectedValue()
        cbSeguro.DataBind()

    End Sub

    Protected Sub btnAltas_Click(sender As Object, e As EventArgs) Handles btnAltas.Click
        Dim ws As New WS.WebService1SoapClient
        ws.DarAltas(txtCI.Text, SeguroID)
        Response.Redirect("ConsultarAsegurado.aspx")
    End Sub
End Class