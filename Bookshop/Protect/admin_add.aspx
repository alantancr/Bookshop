<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="admin_add.aspx.cs" Inherits="Bookshop.Protect.admin_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head runat="server">
    <title></title>
    <style>
        .D1{
            height:100px;
            width:1200px;
            text-align:center;
        }
        .D2{
            float:left;
            height:60px;
            width:600px;
            font-size:40px;
            text-align:center;
        }
       
        .D3{
            float:left;
            height:500px;
            width:600px;
        }
         
        .L1{
            height:20px;
            width:100px;
            margin-top: 20px;
            margin-left: 40px;
            font-size:20px;
        }
        
        .T1{
            height:20px;
            width:200px;
            margin-top: 20px;
            margin-right: 40px;
        }
        .B1{
            height:40px;
            width:120px;
            margin-top:30px;
            font-size:20px;
        }
        #Label12{
            vertical-align:middle;
            font-size: 60px;
        }

        #form1 {
            height: 1200px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="D1">
            <asp:Label ID="Label12" runat="server" Text="ADD DETAILS"></asp:Label>
        </div>
        <div class="D2">
            <asp:Label class="L2" ID="Label1" runat="server" Text="Book"></asp:Label>
        </div>
        <div class="D2">
            <asp:Label class="L2" ID="Label9" runat="server" Text="Category"></asp:Label>
        </div>
        <div class="D3">
          
            <asp:Label class="L1" ID="Label3" runat="server" Text="Title:"></asp:Label>
            <asp:TextBox class="T1" ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label class="L1" ID="Label4" runat="server" Text="CategoryID:"></asp:Label>
            <asp:TextBox class="T1" ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label class="L1" ID="Label5" runat="server" Text="ISBN:"></asp:Label>
            <asp:TextBox class="T1" ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label class="L1" ID="Label6" runat="server" Text="Author:"></asp:Label>
            <asp:TextBox class="T1" ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            <br />
            <asp:Label class="L1" ID="Label7" runat="server" Text="Stock:"></asp:Label>
            <asp:TextBox class="T1" ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <asp:Label class="L1" ID="Label8" runat="server" Text="Price:"></asp:Label>
            <asp:TextBox class="T1" ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <asp:Label class="L1" ID="Label13" runat="server" Text="Synopsis:"></asp:Label>
            <asp:TextBox class="T1" ID="TextBox10" runat="server"></asp:TextBox>
            <br />
            <asp:Label class="L1" ID="Label14" runat="server" Text="SW discount:"></asp:Label>
            <asp:TextBox class="T1" ID="TextBox11" runat="server"></asp:TextBox>
        </div>
        <div class="D3">
            <asp:Label class="L1" ID="Label10" runat="server" Text="CategoryID:"></asp:Label>
            <asp:TextBox class="T1" ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            <asp:Label class="L1" ID="Label11" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox class="T1" ID="TextBox9" runat="server"></asp:TextBox>
        </div>
        <div class="D1">
            <asp:Button class="B1" ID="Button1" runat="server" Text="Save" OnClick="Button1_Click1" />
            <asp:Button class="B1" ID="Button2" runat="server" Text="Cancel" />
        </div>
    </form>
</body>
</asp:Content>
