using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;

namespace Bookshop.Protect
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IIdentity id = User.Identity;
            debugLabel.InnerText = String.Format("IsAuthenticated:{0},Name:{1},Type:{2}", id.IsAuthenticated, id.Name, id.AuthenticationType);

            if (User.IsInRole("user"))
            {
              
                Response.Redirect("~/protect/user.aspx");
            }
            else if (User.IsInRole("admin"))
            {
                Response.Redirect("~/protect/admin.aspx");
            }
         
           
        }
    }
}