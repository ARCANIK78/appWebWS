Imports appWebWS.WS
Public Class regNuevoAsegurado
    Inherits System.Web.UI.Page
    Dim SeguroID As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtCI.Text = Session("CI")
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
    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        Dim ws As New WS.WebService1SoapClient
        ws.RegistrarNuevoAfiliado(txtCI.Text, txtNombre.Text, txtPaterno.Text, txtMaterno.Text, txtFechaNacimiento.Text, ddlSexo.Text, SeguroID)
        Response.Redirect("ConsultarAsegurado.aspx")

    End Sub

    Protected Sub btnCancelar_Click(sender As Object, e As EventArgs) Handles btnCancelar.Click
        Response.Redirect("ConsultarAsegurado.aspx")
    End Sub
End Class