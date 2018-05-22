using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookshop
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string url = (string)Session["url"];
            Label1.Text = url;

            //string x = "~/login.aspsx";
            //if (url == x)
            //{
            //    Response.Redirect("~/cart.aspx");
            //}


        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            string s = "~/protect/default.aspx";
            string url = (string)Session["url"];
            if (Request.QueryString["checkout"] == "true")
            {
                s += "?checkout=true";
            }
            else
            {
                Response.Redirect(url);
            }
          
        }
    }
}