<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication4.Contact" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Website Design</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400,600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <section class="sub-header">
        <nav>
            <a href="index.html"><img src="images/logo.png" alt="logo"></a>
            <div class="nav-links" id="navLinks">

                <i class="fa fa-times" onclick="hidemenu()"></i>

                <ul>
                    <li><a href="./Home.aspx">HOME</a></li>
                    <li><a href="./About.aspx">ABOUT</a></li>
                    <li><a href="./Course.aspx">COURSE</a></li>
                    <li><a href="./Blog.aspx">BLOG</a></li>
                    <li><a href="./Contact.aspx">CONTACT</a></li>
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showmenu()"></i>

        </nav>
        <h1>CONTACT US</h1>

    </section>

    <!----------contact us-------->

    <section class="location">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15054.63998337236!2d72.8199788253716!3d19.38386939059066!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7aec0a4b41bef%3A0xbd1a4ca919d6a613!2sVidyavardhini%20College%20of%20Engineering%20and%20Technology!5e0!3m2!1sen!2sin!4v1670725994698!5m2!1sen!2sin"
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
    </section>

    <section class="contact-us">
        <div class="row">
            <div class="contact-col">
                <div>
                    <i class="fa fa-home" aria-hidden="true"></i>
                    <span>
                        <h5>123 Education Lane, Knowledge City</h5>
                        <p>Maharashtra, Nallasopara, India</p>
                    </span>
                </div>

                <div>
                    <i class="fa fa-phone" aria-hidden="true"></i>
                    <span>
                        <h5>+91 5678575757</h5>
                        <p>Available Monday to Saturday, 10AM to 6PM</p>
                    </span>
                </div>
                <div>
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                    <span>
                        <h5>contact@universitywebsite.edu</h5>
                        <p>We respond within 24 hours</p>
                    </span>
                </div>
            </div>
            <div class="contact-col">
                <form id="contactForm" runat="server">
    <input id="Name" name="Name" type="text" placeholder="Enter your Name" required runat="server" />
    <input id="Email" name="Email" type="email" placeholder="Enter Email ID" required runat="server" />
    <input id="Subject" name="Subject" type="text" placeholder="Enter your Subject" required runat="server" />
    <textarea id="Message" name="Message" rows="8" placeholder="Message" required runat="server"></textarea>
    <button type="submit" class="hero-btn red-btn" runat="server" onserverclick="SubmitForm_Click">SUBMIT</button>
            </form>

            </div>
        </div>
    </section>

    <footer class="footer">
        <h4>About Us</h4>
        <p>
            Dedicated to providing world-class education and fostering innovation. Contact us to learn how you can become part of our growing community.
        </p>
        <div class="icons">
            <i class="fa fa-facebook" aria-hidden="true"></i>
            <i class="fa fa-twitter" aria-hidden="true"></i>
            <i class="fa fa-instagram" aria-hidden="true"></i>
            <i class="fa fa-linkedin" aria-hidden="true"></i>
        </div>
        <p>Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by Gokhul Kooranchi</p>
    </footer>

    <script>
        var navLinks = document.getElementById("navLinks");

        function showmenu() {
            navLinks.style.right = "0";
        }

        function hidemenu() {
            navLinks.style.right = "-200px";
        }
    </script>
</body>

</html>
