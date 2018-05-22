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
             margin-bottom:10px;
        }
         .two{
            height: 500px;
            width: 1000px;
            margin-left:200px;
            text-align:center;
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
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Discount" Font-Size="25px" ></asp:Label>
&nbsp;<asp:TextBox ID="TextBox8" runat="server" Height="38px" Width="144px" Font-Size="25px" OnTextChanged="TextBox8_TextChanged"  ></asp:TextBox>
            &nbsp;<asp:Button ID="Button1" runat="server" Height="25px" Text="Confirm" Font-Size="20px" Width="120px" OnClick="Button1_Click"  />
        </div>
    
        <div class="two">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating"
                DataKeyNames="BookID" Font-Names="Book Antiqua" HorizontalAlign="Right" >
                <AlternatingRowStyle BorderStyle="Double" BorderWidth="2px" Font-Names="Book Antiqua" BackColor="Silver" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundField DataField="BookID" HeaderText="Book ID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                    <asp:TemplateField HeaderText="Title" SortExpression="Title">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category ID" SortExpression="CategoryID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CategoryID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ISBN") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Author" SortExpression="Author">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Author") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Stock" SortExpression="Stock">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Stock") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Stock") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="finalprice" SortExpression="finalprice">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("finalprice") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("finalprice") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Synopsis" SortExpression="Synopsis">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Synopsis") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Synopsis") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ButtonType="Button" ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle VerticalAlign="Middle" Font-Names="Book Antiqua" />
                <EmptyDataRowStyle Font-Names="Book Antiqua" VerticalAlign="Middle" />

               

                <FooterStyle Font-Names="Book Antiqua" />
                <HeaderStyle BackColor="#999999" Font-Names="Book Antiqua" Font-Size="Medium" Font-Strikeout="False" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />

               

            </asp:GridView>
        
        </div>
        
        <div class="five">
        
        </div>
        
        <div class="six">
        </div>
                
</asp:Content>
