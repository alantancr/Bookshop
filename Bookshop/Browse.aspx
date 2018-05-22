<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="Bookshop.Browse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Reference/css/Browse.css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <h1>Browse</h1>
    </div>

    <div class="container">
        <h3>Search For a book:</h3>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="0">Category</asp:ListItem>
        </asp:DropDownList>

        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" CssClass="btn btn-search" />
    </div>

    <div class="container">
    <h3>Search Results</h3>
    <div style="margin-left: 40px">

            <asp:GridView ID="GridView1" GridLines="None" runat="server" AutoGenerateColumns="False" Width="676px" OnRowEditing="GridView1_RowEditing" CssClass="table table-dark" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                    <asp:CommandField ButtonType="Button" EditText="Add To Cart" ShowEditButton="True" ControlStyle-CssClass="btn btn-add-to-cart" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="SendMail"
                            Text="SendMail" CommandArgument='<%# Eval("id") %>' />
                            <asp:Button ID="ViewDetailsButton" runat="server" Text="View Details"  CommandName="ViewDetails" CssClass="btn btn-view-details" CommandArgument="<%Eval(); %>""/>
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>
        
        </div>
    </div>
</asp:Content>