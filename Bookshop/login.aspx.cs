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

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {/*
            if (User.IsInRole("user"))
            {
                Response.Redirect("/browse.aspx");
            }

            else if (User.IsInRole("admin"))
            {
                Response.Redirect("/protect/admin.aspx");
            }
            */
        }
    }
}