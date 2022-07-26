<%@ page title="" language="VB" masterpagefile="~/MasterPageMain.master" autoeventwireup="false" inherits="AssetDetail, App_Web_20mvxtqf" stylesheettheme="DataWebControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Asset Detail"></asp:Label>
    <table>
        <tr>
            <td style="height: 56px">
                <table>
                    <tr>
                        <td>
                            Asset No:
                        </td>
                        <td>
                        </td>
                        <td>
                            Sub No:
                        </td>
                        <td>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td style="width: 6px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txbAssetNo" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            -</td>
                        <td>
                             <asp:TextBox ID="txbSubNo" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="cmdSelect" runat="server" Text="Select" />
                        </td>
                        <td>
                <asp:Button ID="btnAssetTag" runat="server" Text="Asset Tag" Width="98px" />
                        </td>
                        <td style="width: 6px">
                <asp:Button ID="btnAssetCard" runat="server" Text="Asset Card" /> 
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 56px">    
                </td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="dtvAsset" runat="server" Height="50px" Width="540px">
                </asp:DetailsView>
            </td>
            <td style="Width: 540px">
                <asp:Image ID="Image1" runat="server" Height="424px" Width="510px"/>
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Label ID="Label2" runat="server" Text="Picture: "></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="btnUpload" runat="server" Text="Upload" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick="return confirm('Do you want to delete?');"/>
                </asp:Panel>
            </td>
        </tr>
    </table>
    
</asp:Content>

