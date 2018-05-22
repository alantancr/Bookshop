<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="admin_update.aspx.cs" Inherits="Bookshop.Protect.admin_update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        .one{
            height: 100px; 
            width: 1000px;
             font-size:40px;
             margin-left:200px;
        }
         .two{
            height: 500px;
            width: 1000px;
            margin-left:200px;
        }
        .five{
            float:left;
            height: 500px;
            width: 600px;
            margin-left:200px;
        }
        .six{
            float:left;
            height: 400px;
            width: 400px;
        }
        .four{
            height: 40px;
            width: 100px;
            margin-top: 20px;
            font-size: 20px;
        }
      
        #GridView1{
            Height: 500px;
            Width: 1000px;
            text-align:center;
            font-size:14px;
        }

        #GridView2{
            Height: 400px;
            Width: 200px ;
            text-align:center;
            font-size:14px;
        }
        #Label3{
            font-size:40px;
        }

        
        
        

    </style>


        <div class="one">
            <asp:Label ID="Label1" runat="server" Text="Edit BOOK Details">
            </asp:Label>
        </div>
    
        <div class="two">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" 
                OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" AutoGenerateColumns="False"
                >
                <AlternatingRowStyle BackColor="Silver" BorderStyle="Double" BorderWidth="2px" Font-Names="Book Antiqua" />
                <Columns>
                    <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Synopsis" HeaderText="Synopsis" SortExpression="Synopsis" />
                    <asp:BoundField DataField="SWdiscount" HeaderText="SWdiscount" SortExpression="SWdiscount" />
                    <asp:BoundField DataField="finalprice" HeaderText="finalprice" SortExpression="finalprice" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True"/>

              

                </Columns>
                <EditRowStyle VerticalAlign="Middle" />
                <EmptyDataRowStyle Font-Names="Book Antiqua" VerticalAlign="Middle" />

               

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookshopConnectionString3 %>" SelectCommand="SELECT [BookID], [Title], [CategoryID], [ISBN], [Author], [Stock], [Price], [Synopsis], [SWdiscount], [finalprice] FROM [Book]"></asp:SqlDataSource>
        
        </div>
        
        <div class="five">
        
        </div>
        
        <div class="six">
        </div>
                
</asp:Content>
