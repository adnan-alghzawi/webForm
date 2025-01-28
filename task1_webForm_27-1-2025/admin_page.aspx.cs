using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task1_webForm_27_1_2025
{
    public partial class admin_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_book_Click(object sender, EventArgs e)
        {
            Response.Redirect("book_page.aspx");
        }

        protected void show_Click(object sender, EventArgs e)
        {
            Response.Redirect("show_book.aspx");
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit_page.aspx");
        }
    }
}