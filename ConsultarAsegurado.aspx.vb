Imports System.Security.Cryptography
Imports appWebWS.WS
Public Class ConsultarAsegurado
    Inherits System.Web.UI.Page
    Public opcion As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Public Sub Consultar()
        Try
            Dim ws As New WS.WebService1SoapClient
            Dim ds As New WS.db.HistorialAfilacionesDataTable
            ds = ws.ConsultarHistorial(txtCI.Text)
            If ds.Rows.Count > 0 Then
                txtNombres.Text = ds.Item(0).Asegurado
                txtEstado.Text = ds.Item(0).estado
                ObjectDataSource1.DataBind()
                BtnOpcion.Visible = True
                If ds.Item(0).estado = "ALTA" Then
                    BtnOpcion.Text = "DAR BAJA"
                    opcion = "BAJA"
                Else
                    BtnOpcion.Text = "DAR ALTA"
                    opcion = "ALTA"
                End If
            Else
                txtEstado.Text = "La persona no se encuentra asegurado en ningun seguro de salud"
                BtnOpcion.Visible = True
                BtnOpcion.Text = "Registrar Nuevo Asegurado"
                opcion = "NUEVO"
            End If
            lblmensjae.Visible = False
            lblmensjae.Text = ""
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Protected Sub BtnConsultar_Click(sender As Object, e As EventArgs) Handles BtnConsultar.Click
        Consultar()
    End Sub

    Protected Sub BtnOpcion_Click(sender As Object, e As EventArgs) Handles BtnOpcion.Click
        Try
            Dim ws As New WS.WebService1SoapClient
            lblmensjae.Visible = True
            If BtnOpcion.Text = "DAR BAJA" Then
                lblmensjae.Text = ws.RegistrarBajas(txtCI.Text)
                ObjectDataSource1.DataBind()
                dg.DataBind()
            ElseIf BtnOpcion.Text = "DAR ALTA" Then
                Session("CI") = txtCI.Text
                Session("NombreCompleto") = txtNombres.Text
                Response.Redirect("alta.aspx", False)
                Context.ApplicationInstance.CompleteRequest()
                Return
            ElseIf BtnOpcion.Text = "Registrar Nuevo Asegurado" Then
                Session("CI") = txtCI.Text
                Response.Redirect("regNuevoAsegurado.aspx", False)
                Context.ApplicationInstance.CompleteRequest()
                Return
            End If
            Consultar()
        Catch ex As Exception
            lblmensjae.Text = "Error " & ex.Message
        End Try
    End Sub



End Class

