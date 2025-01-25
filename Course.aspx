<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="WebApplication4.Course" %>

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
        <h1>OUR COURSES</h1>
    </section>

    <!-------------------courses-------->
    <section class="course">
        <h1>Courses We Offer</h1>
        <p>Explore our comprehensive range of courses designed to cater to diverse learning needs and career aspirations.</p>
        <div class="row">
            <div class="course-col">
                <h3>Intermediate</h3>
                <p>
                    Build a strong foundation with our intermediate-level courses. Designed for students transitioning into advanced studies, 
                    these courses cover core concepts in various disciplines to prepare you for further academic pursuits.
                </p>
            </div>
            <div class="course-col">
                <h3>Degree</h3>
                <p>
                    Earn your degree through our well-structured undergraduate programs. These courses are tailored to equip you with theoretical 
                    knowledge and practical skills, ensuring a robust academic and professional foundation.
                </p>
            </div>
            <div class="course-col">
                <h3>Post Graduation</h3>
                <p>
                    Advance your expertise with our postgraduate programs. These courses delve deeper into specialized topics, empowering you 
                    with the skills and knowledge required to excel in your chosen field.
                </p>
            </div>
        </div>
    </section>

    <!---------------facilities----------->
    <section class="facilities">
        <h1>Our Facilities</h1>
        <p>We provide state-of-the-art facilities to support your academic and extracurricular growth.</p>
        <div class="row">
            <div class="facilities-col">
                <img src="Images/library.png" alt="Library">
                <p>
                    Our well-equipped library offers an extensive collection of books, journals, and digital resources 
                    to aid your learning and research activities.
                </p>
            </div>
            <div class="facilities-col">
                <img src="Images/basketball.png" alt="Sports Facilities">
                <p>
                    Stay active and healthy with access to our sports facilities, including basketball courts and fitness centers.
                </p>
            </div>
            <div class="facilities-col">
                <img src="Images/cafeteria.png" alt="Cafeteria">
                <p>
                    Enjoy nutritious and delicious meals at our on-campus cafeteria, offering a variety of food options to suit every taste.
                </p>
            </div>
        </div>
    </section>

    <footer class="footer">
        <h4>Courses</h4>
        <p>
            Join our programs to unlock new opportunities and achieve your academic and career goals. 
            Let us help you build the future you envision.
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
        document.addEventListener("DOMContentLoaded", () => {
            document.querySelectorAll(".aspNetHidden").forEach(el => el.style.display = "none");
        });

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
