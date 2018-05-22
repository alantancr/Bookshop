using System;
using System.Collections.Generic;
using System.Linq;
using System.Transactions;
using System.Web;
using TransactionStatus = System.EnterpriseServices.TransactionStatus;

namespace Bookshop
{
    public class BusinessLogic
    {

        //For Main and Browse Page
        //To search/list by required BookTitle
        public static List<Book> SearchByBookTitle(string name)
        {
            using (BookshopModel entities = new BookshopModel())
            { return entities.Books.Where(p => p.Title.Contains(name)).ToList<Book>(); }
        }

        //For browse Page
        //To search/list by required Author
        public static List<Book> SearchByBookAuthor(string name)
        {
            using (BookshopModel entities = new BookshopModel())
            { return entities.Books.Where(p => p.Author.Contains(name)).ToList<Book>(); }
        }

        //For browse Page
        //To search/list by CategoryName (use dropdown selected index)
        public static List<Book> SearchByCategory(int CID)
        {
            using (BookshopModel entities = new BookshopModel())
            { return entities.Books.Where(p => p.CategoryID == (CID + 1)).ToList<Book>(); }
        }

        //For browse Page
        //To sort Booklist by title ascending
        public static List<Book> SortBooksByTitle()
        {
            using (BookshopModel entities = new BookshopModel())
            { return entities.Books.OrderBy(x => x.Title).ToList<Book>(); }
        }

        //For browse Page
        //To sort Booklist by title descending
        public static List<Book> SortBooksByTitleDesc()
        {
            using (BookshopModel entities = new BookshopModel())
            {
                return entities.Books.OrderByDescending(x => x.Title).ToList<Book>();
            }
        }

        //For browse Page
        //To sort Booklist by Price ascending
        public static List<Book> SortBooksByPrice()
        {
            using (BookshopModel entities = new BookshopModel())
            {
                return entities.Books.OrderBy(x => x.Price).ToList<Book>();
            }
        }

        //For browse Page
        //To sort Booklist by Price descending
        public static List<Book> SortBooksByPriceDesc()
        {
            using (BookshopModel entities = new BookshopModel())
            {
                return entities.Books.OrderByDescending(x => x.Price).ToList<Book>();
            }
        }

        //For browse Page
        //To list all books
        public static List<Book> ListAllBooks()
        {
            using (BookshopModel entities = new BookshopModel())
            {
                return entities.Books.ToList<Book>();
            }
        }

        // For View Details Page
        //To View Details (use selected book ID as input argument)
        public static List<Book> ListBookDetails(int BID)
        {
            using (BookshopModel entities = new BookshopModel())
            { return entities.Books.Where(p => p.BookID == BID).ToList<Book>(); }
        }

        //For CheckOut Page

        public static int GetLastOrderID()
        {
            using (BookshopModel entities = new BookshopModel())
            {
                var q = SortOrderID();
                OrderDetail b = q.First();
                return b.OrderID;
            }
        }

        public static List<OrderDetail> SortOrderID()
        {
            using (BookshopModel entities = new BookshopModel())
            {
                return entities.OrderDetails.OrderByDescending(x => x.OrderID).ToList<OrderDetail>();
            }
        }

        public static void CheckOut(string UName, int bookid, int quantity, float fprice)
        {
            int LastOrderID;
            int g;
            using (TransactionScope Ts = new TransactionScope())
            {
                LastOrderID = GetLastOrderID() + 1;
                //To add order
                using (BookshopModel entities = new BookshopModel())
                {
                    OrderDetail order = new OrderDetail()
                    {
                        OrderID = LastOrderID,
                        UserName = UName,
                        BookID = bookid,
                        Quantity = quantity,
                        finalprice = (decimal)fprice,
                        Totalprice = (decimal)(quantity * (decimal)fprice)
                    };
                    entities.OrderDetails.Add(order);

                    var q = from x in entities.Books where x.BookID == bookid select x;
                    Book b = q.First();
                    g = (int)b.Stock;
                    g = g - quantity;
                    b.Stock = g;
                    entities.SaveChanges();
                }
               
                /*scribbly here*/
                // Transaction.Current.TransactionCompleted += new TransactionCompletedEventHandler(Current_TransactionCompleted);
                Ts.Complete();
            }
        }
        /*scribbly here*/
        //public static void Current_TransactionCompleted(object sender, TransactionEventArgs e)
        //{
        //    if (e.Transaction.TransactionInformation.Status == TransactionStatus.Commited)
        //    {
        //        //session[“OrderID”] = LastOrderID;
        //    }
        //    else if (e.Transaction.TransactionInformation.Status == TransactionStatus.Aborted)
        //    {

        //    }
        //}

        //To display Order details for Confirmation Page

        public static List<OrderDetail> DisplayOrder(int OID)
        {
            using (BookshopModel entities = new BookshopModel())
            { return entities.OrderDetails.Where(p => p.OrderID == OID).ToList<OrderDetail>(); }
        }

		//To add Book

		protected void Savebook(string title, int categoryid, string isbn, string author, int stock, decimal price,
			string synopsis, decimal discount)
		{
			using (BookshopModel entities = new BookshopModel())
			{
				Book b = new Book()
				{
					Title = title,
					CategoryID = categoryid,
					ISBN = isbn,
					Author = author,
					Stock = stock,
					Price = price,
					Synopsis = synopsis,
					SWdiscount = 1 - (discount / 100),
					finalprice = price * (1 - (discount / 100)),
				};
				entities.Books.Add(b);
				entities.SaveChanges();
			}
		}

		//Toaddcategory
		protected void SaveCategory(string category)
		{
			using (BookshopModel entities = new BookshopModel())
			{
				Category c = new Category()
				{
					Name = category,
				};
				entities.Categories.Add(c);
				entities.SaveChanges();
			}
		}

		//Toupdatebook
		public static void UpdateBook(int bookid, string title, int categoryid, string isbn, string author, int stock, decimal price,
			string synopsis, decimal discount)
		{
			using (BookshopModel entities = new BookshopModel())
			{
				Book book = entities.Books.Where(p => p.BookID == bookid).First<Book>();
				book.Title = title;
				book.CategoryID = categoryid;
				book.ISBN = isbn;
				book.Author = author;
				book.Stock = stock;
				book.Price = price;
				book.Synopsis = synopsis;
				book.SWdiscount = 1 - (discount / 100);
				book.finalprice = price * (1 - (discount / 100));
				entities.SaveChanges();
			}
		}

		//Todeletebook
		public static void DeleteBook(int bookid)
		{
			using (BookshopModel entities = new BookshopModel())
			{
				Book book = entities.Books.Where(p => p.BookID == bookid).First<Book>();
				entities.Books.Remove(book);
				entities.SaveChanges();
			}
		}


	}
}
