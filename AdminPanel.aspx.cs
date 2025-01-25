using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        private readonly string contactConnectionString = @"Connection String";
        private readonly string blogConnectionString = @"Connection String";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadContactSubmissions();
                LoadBlogComments();
            }
        }

        private void LoadContactSubmissions()
        {
            using (var connection = new SqlConnection(contactConnectionString))
            {
                string query = "SELECT Name, Email, Subject, Message, CreatedAt FROM ContactSubmissions";
                using (var command = new SqlCommand(query, connection))
                {
                    var adapter = new SqlDataAdapter(command);
                    var table = new DataTable();
                    adapter.Fill(table);

                    ContactGrid.DataSource = table;
                    ContactGrid.DataBind();
                }
            }
        }

        private void LoadBlogComments()
        {
            using (var connection = new SqlConnection(blogConnectionString))
            {
                string query = "SELECT Name, Email, Comment, CreatedAt FROM BlogComments";
                using (var command = new SqlCommand(query, connection))
                {
                    var adapter = new SqlDataAdapter(command);
                    var table = new DataTable();
                    adapter.Fill(table);

                    BlogGrid.DataSource = table;
                    BlogGrid.DataBind();
                }
            }
        }

        protected void ContactGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
