<%@ page title="" language="VB" masterpagefile="~/MasterPageMain.master" autoeventwireup="false" inherits="CheckAssets, App_Web_20mvxtqf" stylesheettheme="DataWebControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Check Assets"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table>
        <tr>
            <td colspan="2">
                <table>
                    <tr>
                        <td style="width: 100px;">
                            Year:</td>
                        <td>
                            <asp:DropDownList ID="ddlCheckyear" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                         </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            Company Code:</td>
                        <td>
                            <asp:DropDownList ID="ddlCompCode" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                         </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                             Section:</td>
                        <td>
                            <asp:DropDownList ID="ddlSection" runat="server">
                            </asp:DropDownList>   
                
                            <asp:Button ID="btnReload" runat="server" Text="Reload"/>
                            <asp:Button ID="btnExport" runat="server" Text="Export"/>
                                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick="return confirm('Do you want to delete?');"/>
                
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 30px;">
                            Filter:</td>
                        <td style="height: 30px">
                                <asp:DropDownList ID="ddlField" runat="server">
                                    <asp:ListItem Value="AssetNo">AssetNo</asp:ListItem>
                                    <asp:ListItem Value="Description1">Description</asp:ListItem>
                                    <asp:ListItem Value="Status">Status</asp:ListItem>
                                    <asp:ListItem Value="Building">Location</asp:ListItem>
                                </asp:DropDownList>
                            <asp:TextBox ID="txbFind" runat="server" Width="180px"></asp:TextBox>
                            <asp:Button ID="bntFilter" runat="server" Text="Filter"/>
                            <asp:Button ID="btnClearFilter" runat="server" Text="Clear" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                            Barcode:
                            <asp:TextBox ID="txbBarcode" runat="server" Width="280px"></asp:TextBox>
                            <asp:Button ID="btnAdd" runat="server" Text="Add" style="visibility:hidden"/>
                
                            <br />
                            <asp:Label ID="lblResult" runat="server"></asp:Label>
                            <asp:HiddenField ID="hddResult" runat="server" />
            </td>
            <td>
                            <asp:Button ID="btnSelectAll" runat="server" Text="Select All" Width="115px" />
                            <asp:Button ID="btnClear" runat="server" Text="Clear Select" Width="115px" />
                            <asp:Button ID="btnRemove" runat="server" Text="Remove Item" OnClientClick="return confirm('Do you want to delete?');" Width="115px" />
                
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="gvAssets" runat="server" AllowPaging="True" PageSize="50">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="ckbSelect" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                
            </td>
        </tr>
        <tr>
            <td colspan="2">
                </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Width="360px">
                    <asp:Label ID="Label2" runat="server" Text="File: "></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btnUpload" runat="server" Text="Upload" />
                </asp:Panel>
                
            </td>
        </tr>
    </table>

    <script type="text/javascript">
        
        //This variables is for AutoClearOrSetInputText function
        var pressed = false;
        var changed = false;
//        var chars = [];

        //This function will auto clear or set input text box’s text value
        function AutoClearOrSetInputText(eventForTextBox,idForTextBox) {           

            // add each entered char to the chars array
//            chars.push(String.fromCharCode(eventForTextBox.which));

            // variable to ensure we wait to check the input we are receiving
            if (pressed == false) {
                // we set a timeout function that expires after 0.3 sec, once it does it clears out a list
                // of characters
                
                setTimeout(function () {
                    // check we have a long length e.g. it is a barcode
                    if (document.getElementById(idForTextBox).value.length != 18 && changed == false) {
                        // clear value from input for non-barcode scanner scanned value
                        alert('Please input from barcode scanner only');
                        //                        alert(str.length);
                        document.getElementById(idForTextBox).value = '';
                    }

                    //                    chars = [];

                    pressed = false;
                }, 200);

            }


            if (document.getElementById(idForTextBox).value.length == 18) {
                    

                var str = document.getElementById(idForTextBox).value;

                var b0 = Number(str.substring(0, 1));
                var b1;
                if (b0 < 2) {
                    b1 = str.substring(2, b0 + 11);
                    b3 = str.substring(b0 + 12, 13);
                }
                else {
                    b1 = str.substring(2, b0 + 1);
                    b3 = str.substring(b0 + 2, 13);
                }

                var b2 = str.substring(1, 2);

                var b4 = str.substring(0, 1);

                var b5 = Number(str.substring(13, 14));

                var b6 = str.substring(14, 18);
                var b7;

                if (b5 == 0) {
                    b7 = b6.substring(1, 4) + b6.substring(0, 1);
                }
                else {
                    b7 = b6.substring(0, b5) + b6.substring(b5 + 1, 4) + b6.substring(b5, b5 + 1);
                }

                var barcode = b1 + b2 + b3 + b4 + '-' + b7;

                changed = true;

                document.getElementById(idForTextBox).value = barcode;

//                if (document.getElementById('<%=ddlCompCode.ClientID%>').value == 'All' || document.getElementById('<%=ddlSection.ClientID%>').value == 'All') {
//                    alert('Please select copmany code and section');
//                    document.getElementById(idForTextBox).value = '';
//                }
//                else {
//                    document.getElementById('<%=btnAdd.ClientID%>').click();
//                }
             

                    
            }

            // set press to true so we do not reenter the timeout function above
            pressed = true;
            
        }


    </script> 

</asp:Content>

