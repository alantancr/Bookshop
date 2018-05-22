<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Bookshop.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Reference/css/cart.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <h3>Your Cart Details</h3>
        &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF9900" Text="Label"></asp:Label>


    <asp:GridView ShowFooter ="True" ID="GridViewCart" runat="server"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" OnSelectedIndexChanged="GridViewCart_SelectedIndexChanged" OnRowDataBound="GridViewCart_RowDataBound" CssClass="table table-dark">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <img src="Reference/Images/<%# Eval("BK.ISBN") %>.jpg" class="bookImage"></img>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:BoundField DataField="BK.ISBN" HeaderText="ISBN Number" >
             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
             <asp:BoundField DataField="BK.Title" HeaderText="Book Title" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
            </asp:BoundField>
            <asp:BoundField DataField="BK.Author" HeaderText="Author" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="BK.Price" HeaderText="Unit Price" DataFormatString ="{0:C2}" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
            </asp:BoundField>
            <asp:BoundField DataField="BK.SWdiscount" HeaderText="Discount" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
            </asp:BoundField>
            <asp:BoundField DataField="BK.finalprice" HeaderText="Final Price" DataFormatString ="{0:C2}" >

            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
            </asp:BoundField>

            <asp:TemplateField> 
            <ItemTemplate>
                  <asp:HiddenField ID="HiddenFieldIdRed" runat="server" Value ='<%# Eval("BK.BookID") %>' />
                <asp:Button ID="Button4" runat="server" Text="-" OnClick="Button4_Click1" BackColor="Black" ForeColor="White" CssClass="btn" />   
            </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField> 
            <asp:BoundField  DataField="Quantity" HeaderText="Cart Quantity">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="25px" /></asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button5" runat="server" Text="+" OnClick="Button5_Click" BackColor="Black" ForeColor="White" CssClass="btn" />
                    <asp:HiddenField ID="HiddenFieldIdAdd" runat="server" />
                </ItemTemplate>
                <FooterTemplate>
                    Total Price
                </FooterTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SubTotal">
                <ItemTemplate>
                  $<%#Convert.ToDecimal(Eval("BK.finalprice"))*Convert.ToDecimal(Eval("Quantity")) %>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Label ID="NetTotal" runat="server" Text="TotalPrice"></asp:Label>
                </FooterTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:HiddenField ID="HiddenFieldId" runat="server" Value ='<%# Eval("BK.BookID") %>' />
                    <asp:Button ID="Button3" runat="server" BackColor="Red" ForeColor="White" OnClick="Button3_Click" OnClientClick="return confirm('Are you sure?')" Text="Remove from Cart" CssClass="btn btn-danger"/>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />

    </asp:GridView>
    &nbsp;&nbsp;
    <br />
    <div class="text-center">
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Continue Browsing" CssClass="btn btn-continue-browsing"/>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Checkout" CssClass="btn btn-success btn-checkout"/>
    </div>
        </div>
</asp:Content>
