using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Transactions;
using System.Configuration;

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
                        GenerateGrid();
                    }
                    
                    var q = b.Categories.Select(x => x.Name).ToList();
                    foreach (Category x in b.Categories)
                    {
                        DropDownList1.Items.Add(x.Name);
                    }
                }
            }

            // Fix for ASPNet Grid views, to work with Bootstrap Tables
            //GridView1.UseAccessibleHeader = true;
            //GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GenerateGrid();
            TextBox1.Text = "";
           
        }

        protected void GenerateGrid()
        {
            Label1.Visible = false;
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
                if (q != null)
                {
                    GridView1.DataSource = q.ToList<Book>();
                    GridView1.DataBind();
                    if (GridView1.Rows.Count == 0)
                    {
                        Label1.Visible = true;
                    }
                    else
                    {
                        Label1.Visible = false;
                    }
                }
                
                DropDownList1.SelectedIndex = 0;
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
            try
            {
                using (TransactionScope ts = new TransactionScope())
                {
                    if (Session["cart"] == null)
                    {
                        List<Item> cart = new List<Item>();
                        cart.Add(new Item(b.Books.Where(x => x.BookID == id).First(), 1));
                        Session["cart"] = cart;
                    }
                    else
                    {
                        List<Item> cart = (List<Item>)Session["cart"];
                        int index = isExisting(id);
                        if (index == -1)
                        {
                            cart.Add(new Item(b.Books.Where(x => x.BookID == id).First(), 1));
                        }
                        else
                        {
                            cart[index].Quantity++;
                            Session["cart"] = cart;
                        }
                    }
                    MsgBox("Item added to cart");
                    ts.Complete();
                }
            
            }
            catch(System.Transactions.TransactionException ex)
            {
                MsgBox(ex.ToString());
            }
            catch
            {
                MsgBox("ERROR: Item not added");
            }


        }

        private void MsgBox(string sMessage)
        {
            string msg = "<script language=\"javascript\">";
            msg += "alert('" + sMessage + "');";
            msg += "</script>";
            Response.Write(msg);
        }

        private int isExisting(int id)
        {
            List<Item> cart = (List<Item>)Session["cart"];
            for(int i=0;i<cart.Count;i++)
                if (cart[i].BK.BookID == id)
                    return i;
                return - 1;
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

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GenerateGrid();
        }
    }
}