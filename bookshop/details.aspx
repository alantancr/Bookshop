<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Bookshop.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Reference/CSS/Details.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container container-summary">
        <div class="row">
            <div class="col-md-6">
                <asp:Image ID="Image1" runat="server" CssClass="book-image center-block"/>

            </div>
            <div class="col-md-6">
                <h3 id="title" runat="server">Book Title</h3>
                <div id="author" runat="server">Author</div>
                <div id="synopsis" runat="server">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</div>
                <div id="price" runat="server">$9.00</div>
                <div id="quantity" runat="server">Quantity: <input type="text"/></div>

                <asp:Button ID="Button1" runat="server" Text="Add To Cart" CssClass="btn btn-add-to-cart"/>

            </div>
            
        </div>

    </div>

    <div class="container container-product-details">
        <h2>Product Details</h2>
        <div><span class="details-info">Author: </span><span class="details-data"><div id=details_author runat="server">Avergrove</div></span></div>
        <div><span class="details-info">Name: </span><span class="details-data"><div id=details_name runat="server">NUS-ISS- Misadventures of a Computer Science Student Undergraduate</div></span></div>
        <div><span class="details-info">ISBN: </span><span class="details-data"><div id=details_isbn runat="server">136942584</div></span></div>
    </div>
    

</asp:Content>