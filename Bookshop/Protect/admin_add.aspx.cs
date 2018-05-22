using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookshop.Protect
{
    public partial class admin_add : System.Web.UI.Page
    {
        public void Page_Load()
        {
			
        }

		public void Button1_Click(object sender, EventArgs e)
		{
			try
			{
				BusinessLogic.Savebook(TextBox1.Text, Convert.ToInt32(TextBox2.Text), TextBox3.Text, TextBox4.Text,
					Convert.ToInt32(TextBox5.Text), Convert.ToDecimal(TextBox6.Text), Convert.ToString(TextBox7.Text),
					Convert.ToDecimal(TextBox8.Text));
				Label4.Text = "Book Saved Successfully";
			}
			catch (Exception exp)
			{
				Response.Write(exp.ToString());
			}
		}

		public void Button2_Click(object sender, EventArgs e)
		{
			Response.Redirect("~/Protect/admin_add.aspx");
		}

		public void Button7_Click(object sender, EventArgs e)
		{
			if (TextBox9.Text is null)
			{
				
				Label5.Text = "Please enter a Category";
				
			}
		
			try
			{
				BusinessLogic.SaveCategory(TextBox9.Text);
				Label5.Text = "Category Saved Successfully";
			}
			catch (Exception exp)
			{
				Response.Write(exp.ToString());
			}

		}

		public void Button4_Click(object sender, EventArgs e)
		{
			Response.Redirect(Request.RawUrl); 
		}

	}
}