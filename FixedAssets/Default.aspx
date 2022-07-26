<%@ page title="" language="VB" masterpagefile="~/MasterPageMain.master" autoeventwireup="false" inherits="_Default, App_Web_20mvxtqf" stylesheettheme="DataWebControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Asset List"></asp:Label>
    <table>
        <tr>
            <td>
                <table>
                    <tr>
                        <td style="width: 100px">
                            Company Code:
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlCompCode" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                         </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="File:"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:Button ID="btnUpload" runat="server" Text="Upload" />
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 30px;">
                             Section:</td>
                        <td style="height: 30px">
                            <asp:DropDownList ID="ddlSection" runat="server">
                            </asp:DropDownList>   
                
                            <asp:Button ID="btnReload" runat="server" Text="Reload" />
                            <asp:Button ID="btnExport" runat="server" Text="Export" />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                                    OnClientClick="return confirm('Do you want to delete?');"/>
                
                         </td>
                        <td style="height: 30px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                                Filter:</td>
                        <td>
                             <asp:DropDownList ID="ddlField" runat="server">
                                    <asp:ListItem Value="AssetNo">AssetNo</asp:ListItem>
                                    <asp:ListItem Value="Description1">Description</asp:ListItem>
                                    <asp:ListItem>AssetClass</asp:ListItem>
                                    <asp:ListItem Value="Building">Location</asp:ListItem>
                                    <asp:ListItem Value="VendorName">VendorName</asp:ListItem>
                                    <asp:ListItem Value="Description2">InvoiceNo</asp:ListItem>
                                    <asp:ListItem Value="Manufacturer">ReceiveNo</asp:ListItem>
                                    <asp:ListItem Value="LicenseNo">RingiNo</asp:ListItem>
                                    <asp:ListItem Value="SerialNo">OldID</asp:ListItem>
                                    <asp:ListItem>AcquisitionDate</asp:ListItem>
                                    <asp:ListItem Value="AcqValueEnd">AcqValue</asp:ListItem>
                                    <asp:ListItem Value="ValueDateFirst ">ValueDate</asp:ListItem>
                                </asp:DropDownList>
                            <asp:TextBox ID="txbFind" runat="server" Width="180px"></asp:TextBox>
                
                            <asp:Button ID="bntFilter" runat="server" Text="Filter" />
                            <asp:Button ID="btnClearFilter" runat="server" Text="Clear" />
                
                        </td>
                        <td>
                            &nbsp;</td>
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

</asp:Content>

