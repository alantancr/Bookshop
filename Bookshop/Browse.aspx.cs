using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookshop
{
    public partial class Browse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (BookshopModel b = new BookshopModel())
                {
                    if (Session["query"] != null)
                    {
                        TextBox1.Text = Session["query"].ToString();
                        SearchByTitle();
                        Session["query"] = null;
                    }
                    else
                    {
                        GridView1.DataSource = b.Books.ToList<Book>();
                        GridView1.DataBind();
                    }
                    
                    var q = b.Categories.Select(x => x.Name).ToList();
                    foreach (Category x in b.Categories)
                    {
                        DropDownList1.Items.Add(x.Name);
                    }
                }
            }

            // Fix for ASPNet Grid views, to work with Bootstrap Tables
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GenerateGrid();
        }

        protected void GenerateGrid()
        {
            using (BookshopModel b = new BookshopModel())
            {
                if (DropDownList1.SelectedValue != "0")
                {
                    string category = DropDownList1.SelectedItem.Text.ToString();
                    var q = from x in b.Books where x.Category.Name == DropDownList1.SelectedValue.ToString() select x;
                    GridView1.DataSource = q.ToList<Book>();
                    GridView1.DataBind();
                }
                else
                {
                    GridView1.DataSource = b.Books.ToList<Book>();
                    GridView1.DataBind();
                }
            }
        }

        protected void SearchByTitle()
        {
            using (BookshopModel ctx = new BookshopModel())
            {
                var q = ctx.Books.Where(x => x.Title.Contains(TextBox1.Text));
                GridView1.DataSource = q.ToList<Book>();
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SearchByTitle();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Button lb = (Button)sender;
            HiddenField hd = (HiddenField)lb.FindControl("HiddenFieldID");
            int id = Convert.ToInt32(hd.Value);
            BookshopModel b = new BookshopModel();
            if (Session["cart"] == null)
            {
                List<Item> cart = new List<Item>();
                cart.Add(new Item(b.Books.Where(x => x.BookID == id).First(), 1));
                Session["cart"] = cart;

            }
            else
            {
                List<Item> cart = (List<Item>)Session["cart"];
                cart.Add(new Item(b.Books.Where(x => x.BookID == id).First(), 1));
                Session["cart"] = cart;
            }

        }

        public class Item
        {
            private Book book = new Book();
            private int quantity;

            public Item()
            {

            }

            public Item(Book book, int quantity)
            {
                this.book = book;
                this.quantity = quantity;
            }

            public Book Book
            {
                get { return book; }
                set { book = value; }
            }
            public int Quantity
            {
                get { return quantity; }
                set { quantity = value; }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button lb = (Button)sender;
            HiddenField hd = (HiddenField)lb.FindControl("HiddenField1");
            string isbn = hd.Value;
            Session["isbn"] = isbn;
            Response.Redirect("Details.aspx?isbn=" + isbn);
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (Convert.ToInt32(e.Row.Cells[6].Text) < 1)
                {
                    Button button = (Button)e.Row.FindControl("Button1");
                    button.Enabled = false;
                    button.BackColor = System.Drawing.Color.DarkGray;
                    button.Text = "OUT OF STOCK";

                }

            }
        }
    }
}