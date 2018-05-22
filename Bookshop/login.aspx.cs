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
            

            //string x = "~/login.aspsx";
            //if (url == x)
            //{
            //    Response.Redirect("~/cart.aspx");
            //}


        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            Response.Redirect("~/protect/user.aspx");
        }
    }
}