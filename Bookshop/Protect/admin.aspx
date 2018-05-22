<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Bookshop.Protect.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Reference/css/Admin.css"
	</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container">
    	<h2>Admin's Control Panel</h2>
            <div>Please choose a feature!</div>
		<br />
		<asp:Button ID="Button1" runat="server" Text="Go To Product Update" OnClick="Button1_Click"  CssClass="btn btn-default btn-product-update"/>
        <asp:Button ID="Button2" runat="server" Text="Go to Product Add" OnClick="Button2_Click" CssClass="btn btn-default btn-product-add"/>
    <br/>
    
    <br/>
        <br/>

    </div>
</asp:Content>
