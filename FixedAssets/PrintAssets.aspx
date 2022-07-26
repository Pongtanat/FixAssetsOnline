<%@ page language="VB" masterpagefile="~/MasterPageMain.master" autoeventwireup="false" inherits="PrintAssets, App_Web_20mvxtqf" stylesheettheme="DataWebControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Print Assets"></asp:Label>
   <asp:Panel ID="Panel2" runat="server">
        <table>
            <tr>
                <td>
        <asp:ListBox ID="lstAssets" runat="server" Height="500px" 
            SelectionMode="Multiple" Width="240px"></asp:ListBox>
                </td>
                <td>
        <asp:Button ID="btnSelect" runat="server" Text="&gt;&gt;" />
                    <br />
        <asp:Button ID="btnRemove" runat="server" Text="&lt;&lt;" />
                </td>
                <td>
        <asp:ListBox ID="lstSelect" runat="server" Height="500px" 
            SelectionMode="Multiple" Width="240px"></asp:ListBox>
                </td>
                <td class="style2">
                    <script type="text/javascript">
                        function NewWindow() {
                            document.forms[0].target = "_blank";
                        }
                    </script>
                    <asp:Button ID="btnAssetTag" runat="server" Text="Asset Tag" Width="100px" />
                    <br />
                    <asp:Button ID="btnAssetCard" runat="server" Text="Asset Card" Width="100px" />
                 </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txbFind" runat="server" Width="120px"></asp:TextBox>
                    <asp:Button ID="bntFilter" runat="server" Text="Filter" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
       
</asp:Content>
    