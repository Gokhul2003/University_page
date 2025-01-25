using System;
using System.Data.SqlClient;
using MimeKit;
using MailKit.Net.Smtp;

namespace WebApplication4
{
    public partial class Blog : System.Web.UI.Page
    {
        private readonly string connectionString = @"Connection String";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitComment_Click(object sender, EventArgs e)
        {
            // Extract form values
            string name = Request.Form["name"];
            string email = Request.Form["email"];
            string comment = Request.Form["comment"];
            DateTime createdAt = DateTime.Now;

            try
            {
                // Save comment to the database
                using (var connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO BlogComments (Name, Email, Comment, CreatedAt) VALUES (@Name, @Email, @Comment, @CreatedAt)";
                    using (var command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Name", name);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Comment", comment);
                        command.Parameters.AddWithValue("@CreatedAt", createdAt);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                // Send confirmation email
                SendEmail(name, email, comment);

                // Show success message
                Response.Write("<script>alert('Your comment has been posted successfully!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        private void SendEmail(string name, string email, string comment)
        {
            try
            {
                var emailMessage = new MimeMessage();
                emailMessage.From.Add(new MailboxAddress("Blog Support", ""));
                emailMessage.To.Add(new MailboxAddress(name, email));
                emailMessage.Subject = "Confirmation of Your Blog Comment";

                var htmlBody = $@"
                <html>
                    <body>
                        <h2>Hello {name},</h2>
                        <p>Thank you for commenting on our blog. Here is a copy of your comment:</p>
                        <blockquote>{comment}</blockquote>
                        <p>We appreciate your engagement and look forward to more of your insights.</p>
                        <p>Best Regards,<br>University Support Team</p>
                    </body>
                </html>";

                emailMessage.Body = new TextPart("html") { Text = htmlBody };

                using (var smtpClient = new SmtpClient())
                {
                    smtpClient.Connect("smtp.gmail.com", 587, false);
                    smtpClient.Authenticate("", "");
                    smtpClient.Send(emailMessage);
                    smtpClient.Disconnect(true);
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error sending email: " + ex.Message + "');</script>");
            }
        }
    }
}
