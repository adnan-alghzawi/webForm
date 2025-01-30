<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="task1_webForm_27_1_2025.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background-color: #f0f2f5;
        }

        .profile-container {
            max-width: 900px;
            margin: auto;
            padding: 40px 0;
        }

        .profile-card {
            border-radius: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        .profile-img {
            width: 120px;
            border-radius: 50%;
            margin-bottom: 15px;
            border: 4px solid #fff;
        }

        .btn-custom {
            width: 100%;
            margin-top: 10px;
        }

        .profile-header {
            text-align: center;
            padding: 20px;
            background-color: #007bff;
            color: white;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }

        .profile-details {
            padding: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="profile-container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card profile-card">
                        <div class="profile-header">
                            <img src="https://i.pinimg.com/736x/0d/64/98/0d64989794b1a4c9d89bff571d3d5842.jpg" alt="Avatar" class="profile-img">
                            <h5>
                                <asp:TextBox ID="name" runat="server" CssClass="form-control text-center" placeholder="Enter Name"></asp:TextBox>
                            </h5>
                            <p class="text-muted">
                                <asp:TextBox ID="gender" runat="server" CssClass="form-control text-center" placeholder="gender"></asp:TextBox>
                            </p>
                        </div>
                        <div class="card-body text-center">
                            <asp:Button runat="server" OnClick="edit_Click" Text="Edit" CssClass="btn btn-warning btn-custom" />
                            <asp:Button runat="server" OnClick="Save_Click" Text="Save" CssClass="btn btn-primary btn-custom" />
                        </div>
                    </div>
                </div>

                <div class="col-md-8">
                    <div class="card profile-card">
                        <div class="profile-details">
                            <h5 class="text-center">Profile Information</h5>
                            <hr>

                            <div class="mb-3">
                                <label class="form-label">Full Name</label>
                                <asp:TextBox ID="name1" runat="server" CssClass="form-control" placeholder="Enter Full Name"></asp:TextBox>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Phone</label>
                                <asp:TextBox ID="dob" runat="server" CssClass="form-control" placeholder="date ofbirth"></asp:TextBox>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
