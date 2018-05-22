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
            UpdatePage();

        }

        // Updates page given a book
        protected void UpdatePage() {
            // Grab the attributes from the URL
            string param_isbn = Request.QueryString["isbn"];
            if (param_isbn != null)
            {

                string isbn = param_isbn;

                // Populate the page with information about the book
                using (BookshopModel entities = new BookshopModel())
                {
                    // Get Book
                    Book b = entities.Books.Where(x => x.ISBN == isbn).First();

                    // Update Elements
                    Image1.ImageUrl = "~/Reference/Images/" + b.ISBN + ".jpg";
                    title.InnerText = b.Title;
                    author.InnerText = b.Author;
                    synopsis.InnerText = b.Synopsis;
                    price.InnerText = "$" + b.Price;

                    details_author.InnerText = b.Author;
                    details_name.InnerText = b.Title;
                    details_isbn.InnerText = b.ISBN;

                }
            }

        }



    }
}