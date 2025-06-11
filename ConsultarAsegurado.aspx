<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ConsultarAsegurado.aspx.vb" Inherits="appWebWS.ConsultarAsegurado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2 class="text-center text-primary mb-4">Consultar Estado de Asegurado</h2>

             <div class="mb-3">
                <asp:Label ID="Label1" runat="server" CssClass="form-label" Text="Ingresar CI del asegurado"></asp:Label>
                <asp:TextBox ID="txtCI" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:Button ID="BtnConsultar" runat="server" Text="Consultar"  class="btn btn-outline-primary" />
            </div>           

            <div class="mb-3">
                <asp:Label ID="Label2" runat="server" CssClass="form-label" Text="Nombre Completo"></asp:Label>
                <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:Label ID="Label3" runat="server" CssClass="form-label" Text="Estado"></asp:Label>
                <asp:TextBox ID="txtEstado" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-4">
                <asp:GridView ID="dg" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" CssClass="table table-bordered table-striped">
                    <Columns>
                        <asp:BoundField DataField="fecha" HeaderText="FECHA ALTA/BAJA" SortExpression="fecha" />
                        <asp:BoundField DataField="estadoT" HeaderText="ALTA/BAJA" SortExpression="estadoT" />
                        <asp:BoundField DataField="Seguros" HeaderText="SEGUROS DE SALUD" SortExpression="Seguros" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
                    SelectMethod="ConsultarHistorial"
                    TypeName="appWebWS.WS.WebService1SoapClient">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtCI" DefaultValue="0" Name="CI" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>

            <div class="mb-3">
                <asp:Button ID="BtnOpcion" runat="server" Text="Opción" CssClass="btn btn-secondary" />
                <asp:Label ID="lblmensjae" runat="server" CssClass="form-text text-info" Text="Mensaje"></asp:Label>
            </div>
        </div>
    </form>

</body>
</html>
