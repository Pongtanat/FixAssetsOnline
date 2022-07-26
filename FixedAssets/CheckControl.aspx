<%@ page title="" language="VB" masterpagefile="~/MasterPageMain.master" autoeventwireup="false" inherits="CheckControl, App_Web_20mvxtqf" stylesheettheme="DataWebControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Check Assets Control"></asp:Label>
    <asp:Panel ID="Panel2" runat="server">
        <table>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td >
                                Year:</td>
                            <td >
                                <asp:DropDownList ID="ddlCheckyear" runat="server" AutoPostBack="True">
                                </asp:DropDownList>
                                 <asp:Button ID="btnCreate" runat="server" Text="Create" />
                                 <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                                    OnClientClick="return confirm('Do you want to delete?');"/>
                             </td>
                             <td>
                                 Status:<asp:Label ID="lblStatus" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btnComplete" runat="server" 
                                    OnClientClick="return confirm('Do you want to complete?');" Text="Complete" />
                                <asp:Button ID="btnIncomplete" runat="server" 
                                    OnClientClick="return confirm('Do you want to cancel complete?');" Text="Incomplete" />
                            </td>
                        </tr>
                        <tr>
                            <td >
                                Company Code:
                            </td>
                            <td >
                                <asp:DropDownList ID="ddlCompCode" runat="server" AutoPostBack="True">
                                </asp:DropDownList>
                             </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                Section:</td>
                            <td >
                                <asp:DropDownList ID="ddlSection" runat="server">
                                </asp:DropDownList>
                                <asp:Button ID="btnReload" runat="server" Text="Reload" />
                                <asp:Button ID="btnExport" runat="server" Text="Export" />
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            &nbsp;</td>
                            <td>
                            &nbsp;</td>
                            <td>
                            &nbsp;</td>
                            <td>
                            &nbsp;</td>
                        </tr>
                        <tr>
                            <td >
                                Filter:</td>
                            <td >
                                <asp:DropDownList ID="ddlField" runat="server">
                                    <asp:ListItem Value="AssetNo">AssetNo</asp:ListItem>
                                    <asp:ListItem Value="Description1">Description</asp:ListItem>
                                    <asp:ListItem Value="Status">Status</asp:ListItem>
                                    <asp:ListItem Value="Building">Location</asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox ID="txbFind" runat="server" Width="180px"></asp:TextBox>
                                <asp:Button ID="bntFilter" runat="server" Text="Filter" />
                                <asp:Button ID="btnClearFilter" runat="server" Text="Clear" />
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvAssets" runat="server" AllowPaging="True" PageSize="50">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

