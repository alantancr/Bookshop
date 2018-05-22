﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="Bookshop.Browse" %>
<!-- Browse Head Content-->
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Reference/css/Browse.css" />
</asp:Content>

<!-- Browse Body Content-->
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Value="0">Category</asp:ListItem>
    </asp:DropDownList>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <div style="margin-left: 40px">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="676px" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" />        
                <asp:BoundField DataField="Category.Name" HeaderText="Category" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <image src="Reference/Images/<%# Eval("ISBN") %>.jpg" width="90" height="120"></image>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" EditText="Add" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    
    </div>
</asp:Content>