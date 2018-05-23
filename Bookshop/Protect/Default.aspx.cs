using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;
using System.Web.Security;

namespace Bookshop.Protect
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IIdentity id = User.Identity;
            //debugLabel.InnerText = String.Format("IsAuthenticated:{0}, Name:{1}, Type:{2}, User Roles: {3}", id.IsAuthenticated, id.Name, id.AuthenticationType, Roles.GetRolesForUser().ToString());
            debugLabel.InnerText = String.Format("Welcome, {0}!", id.Name);

            if (Roles.IsUserInRole("admin"))
            {
                adminContainer.Visible = true;
            }

            else
            {
                adminContainer.Visible = false;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Protect/admin_update.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Protect/admin_add.aspx");
        }
    }
}