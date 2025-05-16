Imports appWebWS.WS
Public Class ConsultarAsegurado
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnConsultar_TextChanged(sender As Object, e As EventArgs) Handles btnConsultar.TextChanged
        Try

        Catch ex As Exception

        End Try
    End Sub
End Class