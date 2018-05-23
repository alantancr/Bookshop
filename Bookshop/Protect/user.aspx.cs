using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;

//Author - Tharrani Udhayasekar
namespace Bookshop.Protect
{
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            { 
                AddedtoDB(this, e);
            }
        }

        //To add cart items to DB 

        public void AddedtoDB(object sender, EventArgs e)

        {

            IIdentity id = User.Identity;
            int LastOrderID = BusinessLogic.GetLastOrderID() + 1;
            int g; int tid;
            BookshopModel entities = new BookshopModel();
            List<Item> cart = (List<Item>)Session["cart"];
            if (Session["cart"] == null)
            {
                Label1.Text = "There are no items in your cart to check out";
                Label2.Visible = false;
            }
            else
            {
                for (int i = 0; i < cart.Count; i++)
                {
                    OrderDetail order = new OrderDetail()
                    {
                        OrderID = LastOrderID,
                        UserName = id.Name,
                        BookID = cart[i].BK.BookID,
                        Quantity = cart[i].Quantity,
                        finalprice = (decimal)cart[i].BK.finalprice,
                        Totalprice = (decimal)Session["TotalPrice"]
                    };
                    entities.OrderDetails.Add(order);
                    entities.SaveChanges();

                    tid = cart[i].BK.BookID;
                    var q = entities.Books.Where(x => x.BookID == tid).First();
                    Book b = q;
                    g = (int)b.Stock;
                    g = g - cart[i].Quantity;
                    b.Stock = g;
                    entities.SaveChanges();
                }
                Label1.Text = "Congratulations! Your order is placed with us";
                Label2.Visible = true;
                Label2.Text = "Your Order Number is " + LastOrderID;

            }
        }
    }
}
