using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookshop
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Grab the attributes from the URL
            string param_id = Request.QueryString["id"];
            if(param_id != null)
            {
                /*
                int id = int.Parse()


                // Populate the page with information about the book
                using (BookshopModel entities = new BookshopModel())
                { return entities.Books.Where(p => p.BookID.Contains(param_id)).ToList<Book>(); }
                */

            }



            // Transform the page to match page details.
        }
    }
}