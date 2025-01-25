using System;
using System.Data.SqlClient;
using MimeKit;
using MailKit.Net.Smtp;

namespace WebApplication4
{
    public partial class Contact : System.Web.UI.Page
    {
        private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\GOKHUL.K\source\repos\WebApplication4\WebApplication4\App_Data\ContactSubmissions.mdf;Integrated Security = True";

        protected void Page_Load(object sender, EventArgs e)
        {
            // No specific logic needed for initial load
        }

        protected void SubmitForm_Click(object sender, EventArgs e)
        {
            // Extract form values
            string name = Name.Value;
            string email = Email.Value;
            string subject = Subject.Value;
            string message = Message.Value;
            DateTime createdAt = DateTime.Now;

            try
            {
                // Save data to the database
                using (var connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO ContactSubmissions (Name, Email, Subject, Message, CreatedAt) VALUES (@Name, @Email, @Subject, @Message, @CreatedAt)";
                    using (var command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Name", name);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Subject", subject);
                        command.Parameters.AddWithValue("@Message", message);
                        command.Parameters.AddWithValue("@CreatedAt", createdAt);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                // Send confirmation email
                SendEmail(name, email, subject, message);

                // Show success message
                Response.Write("<script>alert('Your message has been sent successfully!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        private void SendEmail(string name, string email, string subject, string message)
        {
            try
            {
                var emailMessage = new MimeMessage();
                emailMessage.From.Add(new MailboxAddress("University Support", ""));
                emailMessage.To.Add(new MailboxAddress(name, email));
                emailMessage.Subject = "Confirmation of Your Message Submission";

                var htmlBody = $@"
                <html>
                    <body>
                        <h2>Hello {name},</h2>
                        <p>Thank you for reaching out to us. We have received your message and will get back to you soon.</p>
              
                        <p>Best Regards,<br>University Support Team</p>
                    </body>
                </html>";

                emailMessage.Body = new TextPart("html") { Text = htmlBody };

                using (var smtpClient = new MailKit.Net.Smtp.SmtpClient())
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
