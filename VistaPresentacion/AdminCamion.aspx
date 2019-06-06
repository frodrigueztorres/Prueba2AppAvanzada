<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCamion.aspx.cs" Inherits="VistaPresentacion.AdminCamion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="INGRESO DE CAMIONES"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Datos de Camion"></asp:Label>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label10" runat="server" Text="Matricula"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txt_MatriculaCamion" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btn_SearchCamion" runat="server" Text="Buscar Camión" Width="207px" OnClick="btn_SearchCamion_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label11" runat="server" Text="Potencia"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txt_PotenciaCamion" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btn_CleanCamion" runat="server" Text="Limpiar Formulario" Width="207px" OnClick="btn_CleanCamion_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label12" runat="server" Text="Tipo de Camión"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddl_tipoCamion" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="Tipo">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prueba3ConexionPC %>" SelectCommand="SELECT * FROM [Tipo_Camion]"></asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
                        <asp:Button ID="btn_SaveCamion" runat="server" OnClick="btn_SaveCamion_Click" Text="Guardar" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_UpdateCamion" runat="server" Text="Actualizar" OnClick="btn_UpdateCamion_Click" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_DeleteCamion" runat="server" Text="Eliminar" OnClick="btn_DeleteCamion_Click" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_BackCamion" runat="server" OnClick="btn_BackCamion_Click" Text="Volver" />
            <br />
            <br />
            <asp:Label ID="lbl_msgCamion" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="gw_GrillaCamion" runat="server">
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
