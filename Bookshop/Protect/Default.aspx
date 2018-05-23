<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bookshop.Protect.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Reference/css/Admin.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="debugLabel" runat="server">Debugger</div>

    <div runat="server" id="adminContainer" class="container">
    	<h2>Admin's Control Panel</h2>
            <div>Please choose a feature!</div>
		<asp:Button ID="Button1" runat="server" Text="Go To Product Update" OnClick="Button1_Click"  CssClass="btn btn-default btn-product-update"/>
        <asp:Button ID="Button2" runat="server" Text="Go to Product Add" OnClick="Button2_Click" CssClass="btn btn-default btn-product-add"/>
    </div>

        <div runat="server" id="userContainer" class="container">
    	<h2>User's Login page</h2>
            <div>Please choose a page!</div>
		<asp:Button ID="Button3" runat="server" Text="Go back to Cart" OnClick="Button3_Click"  CssClass="btn btn-default btn-product-update"/>
        <asp:Button ID="Button4" runat="server" Text="Go to Confirmation" OnClick="Button4_Click" CssClass="btn btn-default btn-product-add"/>
    </div>
</asp:Content>
