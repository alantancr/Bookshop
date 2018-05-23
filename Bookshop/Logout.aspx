<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Bookshop.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>


    </style>
    <div>Please click here to logout!</div>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout"  CssClass="btn btn-default"/>
    
</asp:Content>
