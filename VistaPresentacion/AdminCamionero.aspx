<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCamionero.aspx.cs" Inherits="VistaPresentacion.AdminCamionCamionero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 135px;
        }
        .auto-style2 {
            width: 340px;
        }
        .auto-style3 {
            width: 135px;
            height: 29px;
        }
        .auto-style4 {
            width: 340px;
            height: 29px;
        }
        .auto-style5 {
            height: 29px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="INGRESO DE CAMIONEROS"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Datos de Camionero"></asp:Label>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="RUT"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label13" runat="server" Text="-"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox9" runat="server" Width="20px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Buscar Camionero" Width="207px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
            <asp:Button ID="Button8" runat="server" Text="Limpiar Formulario" Width="207px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Teléfono"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Dirección"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="Salario"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Text="Población"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label14" runat="server" Text="Asignar camión"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Añadir camión" Width="207px" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button7" runat="server" Text="Guardar" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Actualizar" />
                    &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button10" runat="server" Text="Eliminar" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button9" runat="server" Text="Volver" OnClick="Button9_Click" />
            <br />
            <br />
            <asp:Label ID="Label15" runat="server" Text="Listado de camiones conducidos anteriormente"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
