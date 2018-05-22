<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="admin_add.aspx.cs" Inherits="Bookshop.Protect.admin_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
		.auto-style1 {
			margin-left: 251;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server" />
	<asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">

<ContentTemplate>

	<asp:Table ID="Table1" runat="server" Height="303px" Width="324px">
		<asp:TableRow><asp:TableCell>Title</asp:TableCell>
			<asp:TableCell><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
		<asp:TableRow><asp:TableCell>Category</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
		<asp:TableRow><asp:TableCell>ISBN</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
		<asp:TableRow><asp:TableCell>Author</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
		<asp:TableRow><asp:TableCell>Stock</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></asp:TableCell> </asp:TableRow>
		<asp:TableRow><asp:TableCell>Price (in $)</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox6"  runat="server"></asp:TextBox></asp:TableCell> </asp:TableRow>
		<asp:TableRow><asp:TableCell>Synopsis</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
		<asp:TableRow><asp:TableCell>Discount</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></asp:TableCell> </asp:TableRow>
		</asp:Table>
	    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" style="position:absolute; left: 403px; top: 971px; width: 71px; height: 34px;" Text="Save" /> 
		<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" /> &nbsp &nbsp
	    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" /> 
	 <br />
	<asp:Label ID="Label4" runat="server"></asp:Label>
	 &nbsp;&nbsp;&nbsp;&nbsp;<br />
	<asp:RequiredFieldValidator runat="server" ErrorMessage="Title is required" ForeColor="Red" ControlToValidate="TextBox1" ID="RequiredFieldValidator1"></asp:RequiredFieldValidator>
	    <br />
	<br />
	<asp:RequiredFieldValidator runat="server" ErrorMessage="Category is required" ForeColor="Red" ControlToValidate="TextBox2" ID="RequiredFieldValidator2"></asp:RequiredFieldValidator>
	    <br />
	<br />
	<asp:RequiredFieldValidator runat="server" ErrorMessage="ISBN is required" ForeColor="Red" ControlToValidate="TextBox3" ID="RequiredFieldValidator3"></asp:RequiredFieldValidator>
	    <br />
	<br />
	<asp:RequiredFieldValidator runat="server" ErrorMessage="Author is required" ForeColor="Red" ControlToValidate="TextBox4" ID="RequiredFieldValidator4"></asp:RequiredFieldValidator>
	    <br />
	<br />
	<asp:RequiredFieldValidator runat="server" ErrorMessage="Stock is required" ForeColor="Red" ControlToValidate="TextBox5" ID="RequiredFieldValidator5"></asp:RequiredFieldValidator>
	    <br />
	<br />
	<asp:RequiredFieldValidator runat="server" ErrorMessage="Price is required" ForeColor="Red" ControlToValidate="TextBox6" ID="RequiredFieldValidator6"></asp:RequiredFieldValidator>
	    <br />
	<br />
	<asp:RequiredFieldValidator runat="server" ErrorMessage="Discount is required" ForeColor="Red" ControlToValidate="TextBox8" ID="RequiredFieldValidator7"></asp:RequiredFieldValidator>
	    <br />
	<br />
	&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" style="position:absolute; left: 713px; top: 981px; width: 268px; height: 23px;"></asp:Label>
	<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</ContentTemplate>
		</asp:UpdatePanel>	

	<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">

<ContentTemplate>
	&nbsp &nbsp
	 <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Cancel" style="position:absolute; left: 574px; top: 975px; width: 84px; height: 34px;" CssClass="auto-style1" /> 
	<asp:Table ID="Table2" runat="server" style="position:absolute; left: 28px; top: 939px; width: 354px; height: 67px;">
	<asp:TableRow><asp:TableCell>Category</asp:TableCell><asp:TableCell><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
	</asp:Table>
	<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<br />
	<br />
	 <br />
<br />		
	&nbsp &nbsp
	    <br />
	<br /></ContentTemplate>
		</asp:UpdatePanel>	


	</asp:Content>


