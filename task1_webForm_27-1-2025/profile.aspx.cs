using System;
using System.IO;
using System.Web;
using System.Web.UI;

namespace task1_webForm_27_1_2025
{
    public partial class profile : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProfile();
            }
        }

        

        private void LoadProfile()
        {
            string filePath = Server.MapPath("~/data/adnan.txt");
            string filePath2 = Server.MapPath("~/data/logged.txt");



            if (File.Exists(filePath))
            {
                string[] userData = File.ReadAllLines(filePath);
                string email1 = File.ReadAllText(filePath2);
                foreach (string line in userData)
                {
                    string[] user = line.Split(' ');
                    if (user[1] == email1)
                    {
                        name.Text = user[0];
                        email.Text = user[1];
                        name1.Text = user[2];
                        gender.Text = user[4];
                        dob.Text = user[5];
                    }
                }
            }
            else
            {
                // Fix: Handle empty or incomplete profile files
                name.Text = "";
                gender.Text = "";
                name1.Text = "";
                email.Text = "";
                dob.Text = "";
            }
            }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }
    

    protected void Save_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("~/data/adnan.txt");
            string[] userData = File.ReadAllLines(filePath);
            string filePath2 = Server.MapPath("~/data/logged.txt");
            string email1 = File.ReadAllText(filePath2);
            for (int i = 0; i< userData.Length; i++)
            {
                string[] user = userData[i].Split(' ');
                if (user[1] == email1)
                {
                    user[0]=name.Text;
                    user[1] = email.Text;
                    email1 = email.Text;
                    user[4] = gender.Text;
                    user[5] = dob.Text;
                    userData[i] = $"{user[0]} {user[1]} {user[2]} {user[3]} {user[4]} {user[5]}";
                    File.WriteAllLines(filePath, userData);
                    File.WriteAllText(filePath2, email1);
                    break;
                }
            }


            Response.Write("<script>alert('Profile updated successfully!');</script>");
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            // Fix: Enable textboxes for editing (if needed)
            //name.Enabled = true;
            //gender.Enabled = true;
            //name1.Enabled = true;
            //email.Enabled = true;
            //dob.Enabled = true;
        }
    }
}
