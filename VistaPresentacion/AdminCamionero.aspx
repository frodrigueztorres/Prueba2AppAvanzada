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
        .auto-style8 {
            width: 310px;
        }
        .auto-style9 {
            width: 310px;
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
                        <asp:TextBox ID="txt_RutCamionero" runat="server" MaxLength="9"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label13" runat="server" Text="-"></asp:Label>
&nbsp;<asp:TextBox ID="txt_DvCamionero" runat="server" Width="20px" MaxLength="1"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="MsgRut" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="MsgDv" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btn_SearchCamionero" runat="server" Text="Buscar Camionero" Width="207px" OnClick="btn_SearchCamionero_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_NombreCamionero" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="MsgNombre" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>
            <asp:Button ID="btn_CleanCamionero" runat="server" Text="Limpiar Formulario" Width="207px" OnClick="btn_CleanCamionero_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Teléfono"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_TelefonoCamionero" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="MsgTelefono" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Dirección"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_DireccionCamionero" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="MsgDireccion" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="Salario"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_SalarioCamionero" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="MsgSalario" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Text="Población"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_PoblacionCamionero" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="MsgPoblacion" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            <br />
            <asp:Button ID="btn_SaveCamionero" runat="server" Text="Guardar" OnClick="btn_SaveCamionero_Click" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_UpdateCamionero" runat="server" Text="Actualizar" OnClick="btn_UpdateCamionero_Click" />
                    &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_DeleteCamionero" runat="server" Text="Eliminar" OnClick="btn_DeleteCamionero_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_BackCamionero" runat="server" OnClick="btn_BackCamionero_Click" Text="Volver" />
            <br />
            <br />
            <asp:Label ID="lbl_msgCamionero" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="gw_GrillaCamionero" runat="server">
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
