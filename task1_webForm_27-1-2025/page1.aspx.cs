using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task1_webForm_27_1_2025
{
    public partial class page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sign_in_Click(object sender, EventArgs e)
        {
            Response.Redirect("login_page.aspx");
        }

        protected void sign_up_Click(object sender, EventArgs e)
        {
            Response.Redirect("register_page.aspx");
        }
    }
}