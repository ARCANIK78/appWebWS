<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ConsultarAsegurado.aspx.vb" Inherits="appWebWS.ConsultarAsegurado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2>Consultar Estado de Asegurado</h2>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingresar CI del asegurado"></asp:Label>
            <asp:TextBox ID="txtCI" runat="server"></asp:TextBox>
            <asp:TextBox ID="btnConsultar" runat="server" Text="Consultar" />
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Nombre Completo"></asp:Label>
            <asp:TextBox ID="txtNombres" runat="server" ReadOnly="True"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Estado"></asp:Label>
            <asp:TextBox ID="txtEstado" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
