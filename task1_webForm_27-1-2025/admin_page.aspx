<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_page.aspx.cs" Inherits="task1_webForm_27_1_2025.admin_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card-img-top {
            object-fit: cover;
            height: 150px;
        }
        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            transition: transform 0.2s ease-in-out, box-shadow 0.2s ease-in-out;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .card-title {
            font-size: 1.2rem;
            font-weight: bold;
        }
        .btn-primary {
            border-radius: 20px;
            background-color: #007bff;
            border: none;
            transition: background-color 0.2s ease-in-out;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .card-body {
            min-height: 200px; /* Ensures consistent height for card content */
            display: flex;
            flex-direction: column;
            justify-content: space-between; /* Aligns content and button properly */
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container my-5">
            <h2 class="text-center mb-4">Powers of library owner</h2>
            <div class="row row-cols-1 row-cols-md-5 g-4">
                <!-- Card 1 -->
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Borrow a Book">
                        <div class="card-body text-center">
                            <h5 class="card-title">add book</h5>
                            <p class="card-text">Access our library to borrow books of your choice.</p>
                            
                            <asp:Button ID="add_book" runat="server" OnClick="add_book_Click" class="btn btn-primary" Text="add"/>
                        </div>
                    </div>
                </div>
                <!-- Card 2 -->
                <div class="col">
                    <div class="card h-100">
                        <img src="https://parade.com/.image/t_share/MTk0MDY4ODgxNjM4MTcyMTY1/best-books-of-all-time.jpg" class="card-img-top" alt="See All Books">
                        <div class="card-body text-center">
                            <h5 class="card-title">show Book</h5>
                            <p class="card-text">Explore the entire collection of available books.</p>
                            
                           <asp:Button ID="Button1" runat="server" onclick="show_Click" class="btn btn-primary" Text="show"/>
                        </div>
                    </div>
                </div>
                <!-- Card 3 -->
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Feedback System">
                        <div class="card-body text-center">
                            <h5 class="card-title">edite</h5>
                            <p class="card-text">Share your thoughts to help us improve.</p>
                            <asp:Button ID="edit" runat="server" OnClick="edit_Click" class="btn btn-primary" Text="add"/>
                        </div>
                    </div>
                </div>
              
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
