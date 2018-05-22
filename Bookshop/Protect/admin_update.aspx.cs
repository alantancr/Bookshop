using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookshop.Protect
{
    public partial class admin_update : System.Web.UI.Page
    {
        string title,isbn, author, synopsis;
        int bookid, categoryid, stock;
        decimal price, discount;
        protected void Page_Load(object sender, EventArgs e)
        {
            //bookid = int.Parse(Request.QueryString["bookid"]);
            //title = Request.QueryString["title"];
            //categoryid = int.Parse(Request.QueryString["categoryid"]);
            //isbn = Request.QueryString["isbn"];
            //author = Request.QueryString["author"];
            //stock = int.Parse(Request.QueryString["stock"]);
            //price = decimal.Parse(Request.QueryString["price"]);
            //synopsis = Request.QueryString["synopsis"];
            //discount = decimal.Parse(Request.QueryString["discount"]);
            //if (!IsPostBack)
            //{
            //    BindGrid();
            //}
        }

        private void BindGrid()
        {
            BusinessLogic.UpdateBook(bookid, title,categoryid,isbn,author,stock,price,
            synopsis,discount);
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int orderId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            BusinessLogic.DeleteBook(bookid);
            BindGrid();
        }




        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

       
    }
}