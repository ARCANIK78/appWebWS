<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="regNuevoAsegurado.aspx.vb" Inherits="appWebWS.regNuevoAsegurado" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro de Asegurado</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h3 class="mb-4">Registro de Nuevo Asegurado</h3>

            <div class="mb-3">
                <asp:Label ID="lblCI" runat="server" CssClass="form-label" Text="CI del asegurado"></asp:Label>
                <asp:TextBox ID="txtCI" runat="server" CssClass="form-control" />
            </div>

            <div class="mb-3">
                <asp:Label ID="lblNombre" runat="server" CssClass="form-label" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
            </div>

            <div class="mb-3">
                <asp:Label ID="lblPaterno" runat="server" CssClass="form-label" Text="Apellido Paterno"></asp:Label>
                <asp:TextBox ID="txtPaterno" runat="server" CssClass="form-control" />
            </div>

            <div class="mb-3">
                <asp:Label ID="lblMaterno" runat="server" CssClass="form-label" Text="Apellido Materno"></asp:Label>
                <asp:TextBox ID="txtMaterno" runat="server" CssClass="form-control" />
            </div>

            <div class="mb-3">
                <asp:Label ID="lblFechaNacimiento" runat="server" CssClass="form-label" Text="Fecha de Nacimiento"></asp:Label>
                <asp:TextBox ID="txtFechaNacimiento" runat="server" CssClass="form-control" TextMode="Date" />
            </div>

            <div class="mb-3">
                <asp:Label ID="lblSexo" runat="server" CssClass="form-label" Text="Sexo"></asp:Label>
                <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-select">
                    <asp:ListItem Text="Seleccionar" Value="" />
                    <asp:ListItem Text="Masculino" Value="M" />
                    <asp:ListItem Text="Femenino" Value="F" />
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label3" runat="server" Text="Seguro de Salud"  CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="cbSeguro" runat="server" DataValueField="SegurosID" DataTextField="nombre" class="form-select"></asp:DropDownList>
            </div>

            <div class="mb-3">
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-primary" />
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-secondary ms-2" />
            </div>
        </div>
    </form>
</body>
</html>
