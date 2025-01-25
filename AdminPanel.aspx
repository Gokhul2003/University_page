<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="WebApplication4.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
    <style>
        /* Body Styling */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(120deg, #6a11cb, #2575fc);
            color: #fff;
            margin: 0;
            padding: 20px;
            text-align: center;
        }

        /* Header Styling */
        h1, h2 {
            text-transform: uppercase;
            margin-bottom: 20px;
            animation: fadeInDown 1s ease-in-out;
        }

        h1 {
            font-size: 2.5rem;
            letter-spacing: 2px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        }

        h2 {
            font-size: 1.8rem;
            letter-spacing: 1.5px;
        }

        /* Table Styling */
        .table {
            width: 80%;
            margin: 0 auto 40px;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            animation: fadeInUp 1s ease-in-out;
        }

        .table th, .table td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
        }

        .table th {
            background: rgba(255, 255, 255, 0.2);
            font-weight: bold;
        }

        .table tr:nth-child(even) {
            background: rgba(255, 255, 255, 0.05);
        }

        .table tr:hover {
            background: rgba(255, 255, 255, 0.15);
            cursor: pointer;
            transition: background 0.3s ease-in-out;
        }

        /* Animations */
        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Admin Panel</h1>

        <h2>Contact Submissions</h2>
        <asp:GridView ID="ContactGrid" runat="server" AutoGenerateColumns="true" CssClass="table" OnSelectedIndexChanged="ContactGrid_SelectedIndexChanged"></asp:GridView>

        <h2>Blog Comments</h2>
        <asp:GridView ID="BlogGrid" runat="server" AutoGenerateColumns="true" CssClass="table"></asp:GridView>
    </form>
</body>
</html>
