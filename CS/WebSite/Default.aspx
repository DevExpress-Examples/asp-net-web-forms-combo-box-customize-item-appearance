<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to change a color of text for certain items</title>
    <script type="text/javascript" src="Scripts/JScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxComboBox ID="ASPxComboBox1" ClientInstanceName="clientComboBox" runat="server">
            <Items>
                <dx:ListEditItem Text="ASPxGridView" Value="0" />
                <dx:ListEditItem Text="ASPxHtmlEditor" Value="1" />
                <dx:ListEditItem Text="ASPxEditors" Value="2" />
                <dx:ListEditItem Text="ASPxTreeList" Value="3" />
            </Items>
            <ClientSideEvents Init="OnclientComboBox_Init" EndCallback="OnclientComboBox_EndCallback" />
        </dx:ASPxComboBox>
    </div>
    <div>
        <dx:ASPxButton ID="btn1" runat="server" Text="Do PostBack">
        </dx:ASPxButton>
        <dx:ASPxButton ID="btn2" runat="server" Text="Do Callback" AutoPostBack="false">
            <ClientSideEvents Click="OnButton_Click" />
        </dx:ASPxButton>
    </div>
    </form>
</body>
</html>
