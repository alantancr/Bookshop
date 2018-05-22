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
        decimal price;
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
            if (!IsPostBack)
            {
                BindGrid();

            }
            

        }

        private void BindGrid()
        {
            using (BookshopModel ctx = new BookshopModel())
            {
                GridView1.DataSource = ctx.Books.ToList<Book>();
                GridView1.DataBind();

            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string title, isbn, author, synopsis;
            int bookid, categoryid, stock;
            decimal finalprice;

            GridViewRow row = GridView1.Rows[e.RowIndex];
            bookid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            title = (row.FindControl("TextBox1") as TextBox).Text;
            categoryid = Convert.ToInt32((row.FindControl("TextBox2") as TextBox).Text);
            isbn = (row.FindControl("TextBox3") as TextBox).Text;
            author = (row.FindControl("TextBox4") as TextBox).Text;
            stock = Convert.ToInt32((row.FindControl("TextBox5") as TextBox).Text);
            finalprice = Convert.ToDecimal((row.FindControl("TextBox6") as TextBox).Text);
            synopsis = (row.FindControl("TextBox7") as TextBox).Text;
            BusinessLogic.UpdateBook(bookid, title, categoryid, isbn, author, stock, finalprice, synopsis);
            GridView1.EditIndex = -1;
            BindGrid();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int discount = int.Parse(TextBox8.Text);
            BusinessLogic.discount(discount);
            Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
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
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int bookId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            BusinessLogic.DeleteBook(bookId);
            BindGrid();

        }


       
    }
}