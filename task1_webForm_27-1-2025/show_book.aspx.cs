﻿using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task1_webForm_27_1_2025
{
    public partial class show_book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // المسار إلى ملف الكتب
            string filePath = Server.MapPath("~/data/book.txt");

            // التحقق إذا كان الملف موجودًا
            if (File.Exists(filePath))
            {
                // قراءة البيانات من الملف
                string[] lines = File.ReadAllLines(filePath);

                // التحقق من أن هناك بيانات في الملف
                if (lines.Length > 0)
                {
                    foreach (var line in lines)
                    {
                        // تقسيم البيانات باستخدام الفاصل (نفترض أن البيانات مفصولة بفواصل)
                        string[] bookData = line.Split(',');

                        // إضافة الصفوف إلى الجدول
                        string rowHtml = $"<tr><td>{bookData[0]}</td><td>{bookData[1]}</td><td>{bookData[2]}</td><td>{bookData[3]}</td></tr>";
                        booksTableBody.InnerHtml += rowHtml;
                    }
                }
                else
                {
                    // إذا كان الملف فارغًا
                    booksTableBody.InnerHtml = "<tr><td colspan='4'>No books available.</td></tr>";
                }
            }
            else
            {
                // إذا كان الملف غير موجود
                booksTableBody.InnerHtml = "<tr><td colspan='4'>No books available.</td></tr>";
            }

        }



        protected void btnGoHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}