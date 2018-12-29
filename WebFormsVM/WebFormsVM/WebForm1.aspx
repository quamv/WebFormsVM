<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebFormsVM.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span>The View Model Name: </span>
            <asp:TextBox Text="<%# vm.VmName %>" ID="TxtVmName" runat="server" /><br />
            <span>The Extra View Model Name Textbox</span>
            <asp:TextBox Text='<%# vm.VmName %>' runat="server" /><br />
            <span>The View Model Name Label</span>
            <asp:Label Text="<%# vm.VmName %>"  runat="server" /><br />
            <span>The ViewModel Name Label that disappears on even number scores (non-zero):</span>
            <asp:Label Text="<%# vm.VmName %>" Visible="<%# vm.ShowName %>" runat="server"  /><br />
            <span>The score:</span>
            <asp:Label Text="<%# vm.Score %>" runat="server" /><br />
            <span>The editable score:</span>
            <asp:TextBox Text="<%# vm.Score%>" ID="TxtScore" runat="server" /><br />
            <asp:Label Text='<%# $"VM created at: {vm.CreateDate}" %>' runat="server" /><br />
            <asp:Label Text="<%# vm.PrimaryItem.ItemName %>" runat="server" /><br />
            <asp:Button Text="Submit" ID="BtnSubmit" OnClick="SubmitClick"  runat="server" />
        </div>
    </form>
</body>
</html>
