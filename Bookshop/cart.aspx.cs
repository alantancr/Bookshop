﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;

//Author - Tharrani Udhayasekar 
namespace Bookshop
{
    public partial class cart : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                List<Item> cart = (List<Item>)Session["cart"];
                this.GridViewCart.DataSource = cart;
                this.GridViewCart.DataBind();
            }
            if (Session["cart"] == null)
            {
                Label1.Visible = true;
                Label1.Text = "There are no items in your cart";
                Button1.Visible = false;
            }
            else
            {
                Label1.Visible = false;
                Button1.Visible = true;
            }
        }

        //To check if cart is empty
        protected void CheckNullCart(object sender, EventArgs e)
        {
            List<Item> cart = (List<Item>)Session["cart"];
            if (cart.Count == 0)
            {
                Label1.Visible = true;
                Label1.Text = "There are no items in your cart";
                Button1.Visible = false;
            }
            else
            {
                Label1.Visible = false;
                Button1.Visible = true;
            }
        }

        //Redirect to Login page
        protected void Button1_Click(object sender, EventArgs e)
        {
           Response.Redirect("~/protect/Default.aspx");
        }


        //Redirect to browse page
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Browse.aspx");
        }


        //Check if the item in cart is already existing 
        private int isExisting(int id)
        {
            List<Item> cart = (List<Item>)Session["cart"];
            for (int i = 0; i < cart.Count; i++)
                if (cart[i].BK.BookID == id)
                    return i;
            return -1;
        }

        //To remove items from cart 
        protected void Button3_Click(object sender, EventArgs e)
        {
            Button lb = (Button)sender;
            HiddenField hd = (HiddenField)lb.FindControl("HiddenFieldId");
            int id = Convert.ToInt32(hd.Value);
            List<Item> cart = (List<Item>)Session["cart"];
            cart.RemoveAt(isExisting(id));
            Session["cart"] = cart;
            this.GridViewCart.DataSource = cart;
            this.GridViewCart.DataBind();
            CheckNullCart(this, e);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void GridViewCart_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //To reduce quantity of item in cart 
        protected void Button4_Click1(object sender, EventArgs e)
        {
            Button lb = (Button)sender;
            HiddenField hd = (HiddenField)lb.FindControl("HiddenFieldId");
            int id = Convert.ToInt32(hd.Value);
            List<Item> cart = (List<Item>)Session["cart"];
            int index = isExisting(id);
            if (cart[index].Quantity == 0)
            {
                cart[index].Quantity = 0;
            }
            else
            {
                cart[index].Quantity--;
            }
            Session["cart"] = cart;
            this.GridViewCart.DataSource = cart;
            this.GridViewCart.DataBind();
            CheckNullCart(this, e);
        }

        //To increase item quantity in cart 
        protected void Button5_Click(object sender, EventArgs e)
        {
            Button lb = (Button)sender;
            HiddenField hd = (HiddenField)lb.FindControl("HiddenFieldId");
            int id = Convert.ToInt32(hd.Value);
            List<Item> cart = (List<Item>)Session["cart"];
            int index = isExisting(id);
            if (cart[index].Quantity >= cart[index].BK.Stock)
            {
                cart[index].Quantity = cart[index].BK.Stock;
            }
            else
            {
                cart[index].Quantity++;
            }
            Session["cart"] = cart;
            this.GridViewCart.DataSource = cart;
            this.GridViewCart.DataBind();
            CheckNullCart(this, e);
        }

        //Footer template to calculate net price/quantity 
        decimal totalUnitPrice = 0;
        decimal totalQuantitysold = 0;
        protected void GridViewCart_RowDataBound(object sender, GridViewRowEventArgs e)
        {


            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                totalUnitPrice += ((Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "BK.finalprice"))) * (Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Quantity"))));
                totalQuantitysold += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Quantity"));
            }

            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[6].Text = "Total Quantity";
                e.Row.Cells[6].Font.Bold = true;

                e.Row.Cells[8].Text = totalQuantitysold.ToString();
                e.Row.Cells[8].Font.Bold = true;

                e.Row.Cells[10].Text = string.Format($"{totalUnitPrice:C2}");
                Session["TotalPrice"] = totalUnitPrice;
                e.Row.Cells[10].Font.Bold = true;
            }
        }
    }
}