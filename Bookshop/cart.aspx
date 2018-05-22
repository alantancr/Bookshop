<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Bookshop.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Checkout" />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</asp:Content>
