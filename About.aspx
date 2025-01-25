<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication4.About" %>

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
            <a href="index.html"><img src="Images/logo.png" alt="logo"></a>
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
        <h1>ABOUT US</h1>
    </section>

    <section class="about-us">
        <div class="row">
            <div class="about-col">
                <h1>Welcome to Our Prestigious University</h1>
                <p>
                    Our university stands as a beacon of excellence in education, research, and innovation. Established 
                    with a vision to shape the future, we have become a global leader in providing high-quality education 
                    and fostering intellectual growth. 
                </p>
                <p>
                    With a diverse community of students and faculty from around the world, we offer state-of-the-art 
                    facilities, cutting-edge technology, and a dynamic environment that inspires creativity and learning. 
                    From engineering to humanities, we provide a broad spectrum of programs to empower our students with 
                    the knowledge and skills they need to succeed in an ever-changing world.
                </p>
                <a href="./Course.aspx" class="hero-btn red-btn">EXPLORE COURSES</a>
            </div>
            <div class="about-col">
                <img src="images/about.jpg" alt="University Building">
            </div>
        </div>
    </section>

    <footer class="footer">
        <h4>About Us</h4>
        <p>
            Our mission is to cultivate leaders, innovators, and change-makers who contribute to society and create a better tomorrow. 
            Join us to become a part of a legacy of excellence and impact.
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
