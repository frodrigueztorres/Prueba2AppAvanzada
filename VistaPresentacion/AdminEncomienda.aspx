<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEncomienda.aspx.cs" Inherits="VistaPresentacion.AdminEncomienda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 175px;
        }
        .auto-style2 {
            width: 230px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="FORMULARIO DE ENVIO DE ENCOMIENDAS"></asp:Label>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Código de Paquete"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Buscar Paquete" Width="294px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Descripción del Paquete"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="Limpiar Formulario" Width="294px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Nombre Destinatario"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Dirección de Destinatario"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Camionero Responsable"></asp:Label>
&nbsp;</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Ingresar Nuevo Camionero" Width="294px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Provincia de destino"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Comuna de destino"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Guardar" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Modificar" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Eliminar" />
        </div>
    </form>
</body>
</html>
