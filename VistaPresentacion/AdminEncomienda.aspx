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
                        <asp:TextBox ID="txt_CodigoEncomienda" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbl_ErrorCodigo" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btn_SearchEncomienda" runat="server" Text="Buscar Paquete" Width="207px" OnClick="btn_SearchEncomienda_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Descripción del Paquete"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txt_DescEncomienda" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbl_ErrorDescrip" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btn_CleanEncomienda" runat="server" Text="Limpiar Formulario" Width="207px" OnClick="btn_CleanEncomienda_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Nombre Destinatario"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txt_NombreEncomienda" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbl_ErrorNombre" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Dirección de Destinatario"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txt_DireccionEncomienda" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbl_ErrorDireccion" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Camionero Responsable"></asp:Label>
&nbsp;</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ddl_CameroEncomienda" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="Rut" Width="168px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Prueba3ConnectionString %>" SelectCommand="SELECT * FROM [Camionero] ORDER BY [Nombre]"></asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btn_CamioneroEncomienda" runat="server" OnClick="btn_CamioneroEncomienda_Click" Text="Ingresar Nuevo Camionero" Width="207px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="Camión a conducir"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ddl_CamionEncomienda" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Matricula" DataValueField="Id_Camion" Width="168px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Prueba3ConnectionString %>" SelectCommand="SELECT * FROM [Camiones] ORDER BY [Id_Camion]"></asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btn_CamionEncomienda" runat="server" OnClick="btn_CamionEncomienda_Click" Text="Ingresar nuevo camión" Width="207px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Provincia de destino"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ddl_ProvEncomienda" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Nombre" DataValueField="Cod_Provincia" Width="168px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Prueba3ConnectionString %>" SelectCommand="SELECT * FROM [Provincia] ORDER BY [Cod_Provincia]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Comuna de destino"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ddl_ComuEncomienda" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Nombre" DataValueField="Cod_Comuna" Width="168px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Prueba3ConnectionString %>" SelectCommand="SELECT * FROM [Comuna] WHERE ([Cod_Provincia] = @Cod_Provincia)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddl_ProvEncomienda" Name="Cod_Provincia" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="btn_SaveEncomienda" runat="server" OnClick="btn_SaveEncomienda_Click" Text="Guardar" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_UpdateEncomienda" runat="server" Text="Modificar" OnClick="btn_UpdateEncomienda_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_DeleteEncomienda" runat="server" OnClick="btn_DeleteEncomienda_Click" Text="Eliminar" />
            <br />
            <br />
            <asp:Label ID="lbl_msgEncomienda" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="gw_GrillaEncomienda" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
