using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        private const string AdminUsername = "admin";
        private const string AdminPassword = "admin123";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];

            // Validate credentials
            if (username == AdminUsername && password == AdminPassword)
            {
                // Redirect to admin panel
                Response.Redirect("AdminPanel.aspx");
            }
            else
            {
                // Display error message
                Response.Write("<script>alert('Invalid Username or Password');</script>");
            }

        }
    }
}




