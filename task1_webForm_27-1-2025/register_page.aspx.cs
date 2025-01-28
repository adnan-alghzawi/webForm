using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task1_webForm_27_1_2025
{
    public partial class register_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            string file = Server.MapPath("~/data/adnan.txt");

            if (!File.Exists(file)) {

                using (StreamWriter sw=File.CreateText(file))
                {
                    sw.WriteLine($"{name.Text} {email.Text} {password.Text} {repeat_password.Text}");

                }
            }
            else
            {
                using(StreamWriter sw= new StreamWriter(file,true))
                {
                    sw.WriteLine($"{name.Text} {email.Text} {password.Text} {repeat_password.Text}");
                }
            }

            Response.Redirect("login_page.aspx");
        }
    }
}