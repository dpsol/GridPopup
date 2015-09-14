<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridPopup.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:GridView ID="gvDatos" runat="server" DataKeyNames="UserId" AutoGenerateColumns="false">
            <RowStyle BackColor="#EFF3FB" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Editar">
                    <ItemTemplate>
                        <asp:Button ID="btnEditar" runat="server" Width="75" Height="25"
                            OnClick="btnEditar_Click" Text="Editar" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Nombre" HeaderText="UserName" />
                <asp:BoundField DataField="Paterno" HeaderText="FirstName" />
                <asp:BoundField DataField="Materno" HeaderText="LastName" />
            </Columns>
        </asp:GridView>
         <asp:LinkButton Text="" ID = "btnPopup" runat="server" />
        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1"
            CancelControlID="btnCerrar" BackgroundCssClass="modalBackground" TargetControlID="btnPopup">
        </asp:ModalPopupExtender>
        <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            <table width="100%" style="border: Solid 3px #D55500; width: 100%; height: 100%"
                cellpadding="0" cellspacing="0">
                <tr style="background-color: #D55500">
                    <td colspan="2" style="height: 10%; color: White; font-weight: bold; font-size: larger"
                        align="center">
                        Datos del usuario
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 45%">
                        UserId:
                    </td>
                    <td>
                        <asp:Label ID="lblID" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Nombre:
                    </td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Paterno:
                    </td>
                    <td>
                        <asp:TextBox ID="txtPaterno" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Materno:
                    </td>
                    <td>
                        <asp:TextBox ID="txtMaterno" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
                        <asp:Button ID="btnCerrar" runat="server" Text="Cancelar" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
