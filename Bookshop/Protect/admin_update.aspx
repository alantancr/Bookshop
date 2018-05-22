<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="admin_update.aspx.cs" Inherits="Bookshop.Protect.admin_update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Reference/css/Admin_update.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div class="container">
        <h1>Product Update and Discounts</h1>
    

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating"
                DataKeyNames="BookID" CssClass="table table-responsive">
                <Columns>
                    <asp:BoundField DataField="BookID" HeaderText="Book ID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" >
                    <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
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
                    <asp:TemplateField HeaderText="Final Price" SortExpression="finalprice">
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
        
            <asp:Label ID="Label8" runat="server" Text="Set Universal Discount: "></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox8_TextChanged"  ></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="Button1_Click"  />

     </div>           
</asp:Content>
