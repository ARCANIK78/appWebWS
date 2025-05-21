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
            <asp:Button ID="BtnConsultar" runat="server" Text="Consultar" />
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Nombre Completo"></asp:Label>
            <asp:TextBox ID="txtNombres" runat="server" ReadOnly="True"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Estado"></asp:Label>
            <asp:TextBox ID="txtEstado" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:GridView ID="dg" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
                <Columns>
                    <asp:BoundField DataField="fecha" HeaderText="FECHA ALTA/BAJA" SortExpression="fecha" />
                    <asp:BoundField DataField="estado" HeaderText="ALTA/BAJA" SortExpression="estado" />
                    <asp:BoundField DataField="Seguros" HeaderText="SEGUROS DE SALUD" SortExpression="Seguros" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="ConsultarHistorial" TypeName="appWebWS.WS.WebService1SoapClient">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtCI" DefaultValue="0" Name="CI" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <div>
            <asp:Button ID="btnOpcion" runat="server" Text="Opcion" />
            <asp:Label ID="lblmensjae" runat="server" Text="Mensaje"></asp:Label>
        </div>
    </form>
</body>
</html>
