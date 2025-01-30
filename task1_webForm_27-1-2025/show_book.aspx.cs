using System;
using System.IO;
using System.Web.UI;

namespace task1_webForm_27_1_2025
{
    public partial class show_book : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBooks();
            }
        }

        private void LoadBooks(string searchId = null)
        {
            string filePath = Server.MapPath("~/data/book.txt");
            booksTableBody.InnerHtml = "";

            if (File.Exists(filePath))
            {
                string[] lines = File.ReadAllLines(filePath);
                bool bookFound = false;

                foreach (var line in lines)
                {
                    string[] bookData = line.Split(',');
                    if (bookData.Length < 4) continue;

                    if (string.IsNullOrEmpty(searchId) || bookData[0] == searchId)
                    {
                        string rowHtml = $"<tr><td>{bookData[0]}</td><td>{bookData[1]}</td><td>{bookData[2]}</td><td>{bookData[3]}</td></tr>";
                        booksTableBody.InnerHtml += rowHtml;
                        bookFound = true;
                    }
                }

                if (!bookFound)
                {
                    booksTableBody.InnerHtml = "<tr><td colspan='4'>No matching book found.</td></tr>";
                }
            }
            else
            {
                booksTableBody.InnerHtml = "<tr><td colspan='4'>No books available.</td></tr>";
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            LoadBooks(txtSearch.Text.Trim());
        }
    }
}