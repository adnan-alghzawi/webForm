<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="library_page.aspx.cs" Inherits="task1_webForm_27_1_2025.library_page" %>

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
            <h2 class="text-center mb-4">Powers of Students</h2>
            <div class="row row-cols-1 row-cols-md-5 g-4">
                <!-- Card 1 -->
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Borrow a Book">
                        <div class="card-body text-center">
                            <h5 class="card-title">Borrow a Book</h5>
                            <p class="card-text">Access our library to borrow books of your choice.</p>
                            <a href="#" class="btn btn-primary">Borrow a Book</a>
                        </div>
                    </div>
                </div>
                <!-- Card 2 -->
                <div class="col">
                    <div class="card h-100">
                        <img src="https://parade.com/.image/t_share/MTk0MDY4ODgxNjM4MTcyMTY1/best-books-of-all-time.jpg" class="card-img-top" alt="See All Books">
                        <div class="card-body text-center">
                            <h5 class="card-title">See All Books</h5>
                            <p class="card-text">Explore the entire collection of available books.</p>
                            
                            <asp:Button ID="books_button" runat="server" OnClick="books_button_Click" class="btn btn-primary" Text="See All Books"/>
                        </div>
                    </div>
                </div>
                <!-- Card 3 -->
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Feedback System">
                        <div class="card-body text-center">
                            <h5 class="card-title">Feedback System</h5>
                            <p class="card-text">Share your thoughts to help us improve.</p>
                            <a href="#" class="btn btn-primary">Add Feedback</a>
                        </div>
                    </div>
                </div>
                <!-- Card 4 -->
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Reserve a Meeting Room">
                        <div class="card-body text-center">
                            <h5 class="card-title">Reserve a Meeting Room</h5>
                            <p class="card-text">Book a space for your meetings and events.</p>
                            <a href="#" class="btn btn-primary">Reserve Now</a>
                        </div>
                    </div>
                </div>
                <!-- Card 5 -->
                <div class="col">
                    <div class="card h-100">
                        <img src="https://www.zemlar.ca/wp-content/uploads/2023/02/Essentials-of-Meeting-Rooms.jpg" class="card-img-top" alt="See Meeting Rooms">
                        <div class="card-body text-center">
                            <h5 class="card-title">See Meeting Rooms</h5>
                            <p class="card-text">Browse available meeting rooms for your needs.</p>
                            
                            <asp:Button ID="meeting_button" runat="server" OnClick="meeting_button_Click" class="btn btn-primary" Text="meeting rooms"/>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
