using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bookshop
{
    public class Item
    {
        private Book bk = new Book();
        private int quantity;

        public Book BK
        {
            get { return bk; }
            set { bk = value; }
        }

        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }
        public Item()
        {

        }

        public Item(Book bk, int Quan)
        {
            this.bk = bk;
            this.quantity = Quan;
        }

    }
}