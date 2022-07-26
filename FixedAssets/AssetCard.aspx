<%@ page title="" language="VB" masterpagefile="~/MasterPageMain.master" autoeventwireup="false" inherits="AssetCard, App_Web_20mvxtqf" stylesheettheme="DataWebControls" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="29.7cm" 
            Width="21cm">
    </rsweb:ReportViewer>
</asp:Content>

