<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication4.AdminLogin" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>

    <!-- Add CSS File -->
    <link rel="stylesheet" href="StyleSheet1.css">
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <h3 class="title">Admin Login</h3>

            <div class="field">
                <label for="username">Username:</label>
                <asp:TextBox ID="Username" runat="server" CssClass="input-field" Placeholder="Enter your username"></asp:TextBox>
            </div>

            <div class="field">
                <label for="password">Password:</label>
                <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="input-field" Placeholder="Enter your password"></asp:TextBox>
            </div>

           

            <!-- Submit Button -->
        <asp:Button ID="Button1" runat="server" Text="LOGIN" 
    CssClass="button" OnClick="LoginButton_Click" 
    style="width: 100%; padding: 10px; background: transparent; border: 2px solid #ffffff23; color: #fff; font-size: 17px; font-weight: 500; letter-spacing: 1px; cursor: pointer;" />

        </form>

    <p>Need access? <a href="/request-access">Do Login</a></p>
    </div>
   
</body>
</html>
