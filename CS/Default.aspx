<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function onSelectedIndexChanged(sender, target) {
            target.SetItemTooltip(sender.PrevIndex, "");
            target.SetItemTooltip(sender.GetSelectedIndex(), "This item is selected in another combobox");
            target.RemoveItemCssClass(sender.PrevIndex, "MySelectedItem");
            target.AddItemCssClass(sender.GetSelectedIndex(), "MySelectedItem");
            sender.PrevIndex = sender.GetSelectedIndex();
        }
        function SetItemColor(s, e) {
            s.PrevIndex = null;
            for (i = 0; i < s.GetItemCount() ; i++) {
                var rowClass = (i % 2 == 0) ? "MyGreen" : "MyBlue";
                s.AddItemCssClass(i, rowClass);
            }
        }
    </script>
    <link rel="stylesheet" type="text/css" href="Styles/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxComboBox ID="MyTestComboBox1" runat="server" ClientInstanceName="combo1">
                <Items>
                    <dx:ListEditItem Text="ASPxGridView" Value="0" />
                    <dx:ListEditItem Text="ASPxHtmlEditor" Value="1" />
                    <dx:ListEditItem Text="ASPxEditors" Value="2" />
                    <dx:ListEditItem Text="ASPxTreeList" Value="3" />
                </Items>
                <ClientSideEvents SelectedIndexChanged="function (s, e) { onSelectedIndexChanged(s, combo2); }" Init="SetItemColor" EndCallback="SetItemColor" />
            </dx:ASPxComboBox>
            <dx:ASPxComboBox ID="MyTestComboBox2" runat="server" ClientInstanceName="combo2">
                <Items>
                    <dx:ListEditItem Text="ASPxGridView" Value="0" />
                    <dx:ListEditItem Text="ASPxHtmlEditor" Value="1" />
                    <dx:ListEditItem Text="ASPxEditors" Value="2" />
                    <dx:ListEditItem Text="ASPxTreeList" Value="3" />
                </Items>
                <ClientSideEvents SelectedIndexChanged="function (s, e) { onSelectedIndexChanged(s, combo1); }" Init="SetItemColor" EndCallback="SetItemColor" />
            </dx:ASPxComboBox>
        </div>
    </form>
</body>
</html>
