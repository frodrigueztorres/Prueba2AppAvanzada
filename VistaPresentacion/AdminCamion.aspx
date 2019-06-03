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
            <asp:Label ID="Label1" runat="server" Text="INGRESO DE CAMIONEROS"></asp:Label>
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
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btn_schCamion" runat="server" Text="Buscar Camión" Width="207px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label11" runat="server" Text="Potencia"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button9" runat="server" Text="Limpiar Formulario" Width="207px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label12" runat="server" Text="Tipo de Camión"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
                        <asp:Button ID="Button7" runat="server" Text="Guardar" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" Text="Actualizar" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button6" runat="server" Text="Eliminar" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Volver" />
            <br />
        </div>
    </form>
</body>
</html>
