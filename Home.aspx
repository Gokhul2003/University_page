<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication4.Home" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University of Excellence</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400,600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <section class="header">
        <nav>
            <a href="index.html"><img src="Images/logo.png" alt="University Logo"></a>
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times" onclick="hidemenu()"></i>
                <ul>
                    <li><a href="./index.aspx">Home</a></li>
                    <li><a href="./about.aspx">About</a></li>
                    <li><a href="./course.aspx">Courses</a></li>
                    <li><a href="./blog.aspx">Blog</a></li>
                    <li><a href="./contact.aspx">Contact</a></li>
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showmenu()"></i>
        </nav>

        <div class="text-box">
            <h1>Welcome to the University of Excellence</h1>
            <p>Empowering students worldwide through top-notch education, state-of-the-art facilities, and global opportunities.</p>
            <a href="./about.html" class="hero-btn">Learn More</a>
        </div>
    </section>

    <section class="course">
        <h1>Our Courses</h1>
        <p>Explore a variety of programs tailored to your aspirations and career goals.</p>
        <div class="row">
            <div class="course-col">
                <h3>Undergraduate Programs</h3>
                <p>We offer comprehensive undergraduate degrees across diverse fields such as engineering, business, and arts.</p>
            </div>
            <div class="course-col">
                <h3>Postgraduate Programs</h3>
                <p>Advance your knowledge and skills with our specialized master's and doctoral programs.</p>
            </div>
            <div class="course-col">
                <h3>Online Courses</h3>
                <p>Flexible and accessible online courses designed for working professionals and remote learners.</p>
            </div>
        </div>
    </section>

    <section class="campus">
        <h1>Our Global Campuses</h1>
        <p>Experience world-class education in some of the most vibrant cities.</p>
        <div class="row">
            <div class="campus-row">
                <img src="Images/london.png" alt="London Campus">
                <div class="layer">
                    <h3>London</h3>
                </div>
            </div>
            <div class="campus-row">
                <img src="Images/newyork.png" alt="New York Campus">
                <div class="layer">
                    <h3>New York</h3>
                </div>
            </div>
            <div class="campus-row">
                <img src="Images/washington.png" alt="Washington Campus">
                <div class="layer">
                    <h3>Washington</h3>
                </div>
            </div>
        </div>
    </section>

    <section class="facilities">
        <h1>Our Facilities</h1>
        <p>Discover state-of-the-art amenities designed to enhance your learning experience.</p>
        <div class="row">
            <div class="facilities-col">
                <img src="Images/library.png" alt="Library">
                <p>A modern library with extensive digital and physical resources to support your studies.</p>
            </div>
            <div class="facilities-col">
                <img src="Images/basketball.png" alt="Basketball Court">
                <p>Sports facilities that cater to a variety of athletic interests and activities.</p>
            </div>
            <div class="facilities-col">
                <img src="Images/cafeteria.png" alt="Cafeteria">
                <p>Comfortable and vibrant dining spaces offering a variety of healthy food options.</p>
            </div>
        </div>
    </section>

    <section class="testimonials">
        <h1>What Our Students Say</h1>
        <p>Hear from our students about their transformative experiences at the University of Excellence.</p>
        <div class="row">
            <div class="testimonials-col">
                <img src="Images/user1.jpg" alt="Student 1">
                <div>
                    <p>The university provided me with incredible opportunities to grow academically and personally. The faculty are exceptional!</p>
                    <h3>Christine Berkley</h3>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star-half-o" aria-hidden="true"></i>
                </div>
            </div>
            <div class="testimonials-col">
                <img src="Images/user2.jpg" alt="Student 2">
                <div>
                    <p>Amazing campus life and top-notch education. I couldn’t have asked for a better university experience!</p>
                    <h3>David Berry</h3>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
        </div>
    </section>

    <section class="cta">
        <h1>Join Us Today!</h1>
        <p>Take the first step towards a brighter future with the University of Excellence.</p>
        <a href="./contact.html" class="hero-btn">Contact Us</a>
    </section>

    <footer class="footer">
        <h4>About Us</h4>
        <p>We are committed to delivering exceptional education and fostering a vibrant academic community.</p>
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
