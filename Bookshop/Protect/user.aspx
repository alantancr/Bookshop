<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="Bookshop.Protect.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Reference/css/user.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container text-center">

        <h2><asp:Label ID="Label1" runat="server" Text="Label1" /></h2> 
        <img id="confirmation_checkmark" src="../Reference/Images/checkmark.jpg">
        <br />
       <h3><asp:Label ID="Label2" runat="server" Text="Labe2" /></h3>  
    </div>


</asp:Content>
