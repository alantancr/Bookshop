<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="Bookshop.Protect.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Reference/css/user.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container text-center">

        <h2 id="header_text">You bought some books, good job!</h2>
        <img id="confirmation_checkmark" src="../Reference/Images/checkmark.jpg">
    </div>

</asp:Content>
