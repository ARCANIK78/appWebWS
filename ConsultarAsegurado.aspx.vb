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
                btnOpcion.Visible = True
                If ds.Item(0).estado = "ALTA" Then
                    btnOpcion.Text = "DAR BAJA"
                    opcion = "BAJA"
                Else
                    btnOpcion.Text = "DAR ALTA"
                    opcion = "ALTA"
                End If
            Else
                txtEstado.Text = "La persona no se encuentra asegurado en ningun seguro de salud"
                btnOpcion.Visible = True
                btnOpcion.Text = "Registrar Nuevo Asegurado"
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

    Protected Sub btnOpcion_Click(sender As Object, e As EventArgs) Handles btnOpcion.Click
        Try
            Dim ws As New WS.WebService1SoapClient
            lblmensjae.Visible = True
            If BtnConsultar.Text = "DAR BAJA" Then
                lblmensjae.Text = ws.RegistrarBajas(txtCI.Text)
            End If
        Catch ex As Exception

        End Try
    End Sub


End Class