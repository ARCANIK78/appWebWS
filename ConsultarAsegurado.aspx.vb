Imports appWebWS.WS
Public Class ConsultarAsegurado
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnConsultar_Click(sender As Object, e As EventArgs) Handles btnConsultar.Click
        Try
            Dim ws As New WS.WebService1SoapClient
            Dim ds As New WS.db.HistorialAfilacionesDataTable
            ds = ws.ConsultarHistorial(txtCI.Text)
            If ds.Rows.Count > 0 Then
                txtNombres.Text = ds.Item(0).Asegurado
                txtEstado.Text = ds.Item(0).estado
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class