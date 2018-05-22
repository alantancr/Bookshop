<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Bookshop.Protect.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
    <asp:Label ID="Label1" runat="server" Text="admin"></asp:Label>
    

    <asp:RadioButtonList ID="RadioButtonList1" align="center" runat="server">
        <asp:ListItem>Update</asp:ListItem>
        <asp:ListItem>Add</asp:ListItem>
    </asp:RadioButtonList>
    <br/>
    
    <asp:Button ID="Button1" runat="server" align="center" Text="Enter" />
    
    <br/>
        <br/>

    <asp:GridView ID="GridView1" align="center" runat="server"></asp:GridView>
    
    </div>
</asp:Content>
