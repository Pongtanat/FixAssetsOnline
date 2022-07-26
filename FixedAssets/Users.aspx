<%@ page title="" language="VB" masterpagefile="~/MasterPageMain.master" autoeventwireup="false" inherits="Users, App_Web_20mvxtqf" stylesheettheme="DataWebControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Users Managemant"></asp:Label>
    <asp:Panel ID="Panel2" runat="server">
        <asp:Button ID="btnNew" runat="server" Text="New" />
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick='return confirm("Do you want to delete this user?");' />
                        <asp:Button ID="btnSave" runat="server" Text="Save" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
        <table>
            <tr>
                <td>
                        <asp:GridView ID="gvUsers" runat="server">
                            <Columns>
                                <asp:ButtonField CommandName="Select" Text="Select" />
                            </Columns>
                        </asp:GridView>
                </td>
                <td>
                    <asp:Panel ID="Panel1" runat="server">
                        <table>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>               
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    User Id:
                                </td>
                                <td>
                                    <asp:TextBox ID="txbUSERID" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Domain:
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlDomain" runat="server" Width="150px"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Company Code:
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlCompCode" runat="server" AutoPostBack="True">
                                        <asp:ListItem Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Section:
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlSection" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Role:
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlRole" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

