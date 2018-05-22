using System;
using System.Collections.Generic;
using System.Drawing.Drawing2D;
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
            string url = HttpContext.Current.Request.Url.AbsolutePath;
            Session["ur"] = url;

            GridView1.DataSource = BusinessLogic.ListAllBooks();
            GridView1.DataBind();

            

        }
    }
}