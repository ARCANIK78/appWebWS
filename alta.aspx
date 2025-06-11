<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="alta.aspx.vb" Inherits="appWebWS.alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<script src="Scripts/bootstrap.bundle.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
    <title>DAr Alta</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container mt-5">
     <h2>Dar Alta Asegurado</h2>
        <div class="container mt-3">
            <asp:Label ID="Label1" runat="server" Text="CI del ASegurado" CssClass="col-form-label"></asp:Label>
            <asp:TextBox ID="txtCI" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="container mt-3">
            <asp:Label ID="Label2" runat="server" Text="Nombre Completo"  CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtNOmbre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="container mt-3">
            <asp:Label ID="Label3" runat="server" Text="Seguro de Salud"  CssClass="form-label"></asp:Label>
            <asp:DropDownList ID="cbSeguro" runat="server" DataValueField="SegurosID" DataTextField="nombre" class="form-select"></asp:DropDownList>
        </div>
        <div class="container mt-3">
            <asp:Button ID="btnAltas" runat="server" Text="Registrar Altas" CssClass="form-control" />
        </div>
       </div>
    </form>
</body>
</html>
