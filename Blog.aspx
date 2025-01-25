<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="WebApplication4.Blog" %>

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
        <h1>Our Certificate & Online Programs For 2021</h1>
    </section>

    <!-- Blog Page Content -->
    <section class="blog-content">
        <div class="row">
            <div class="blog-left">
                <img src="Images/certificate.jpg" alt="Certificate Image">
                <h2>Explore Our Certification Programs</h2>
                <p>
                    Our certification and online programs are designed to equip students and professionals with cutting-edge skills in high-demand fields. 
                    These programs are created in collaboration with industry experts to ensure alignment with current trends and practices.
                </p>
                <br>
                <p>
                    Whether you are looking to advance your career, pivot to a new field, or gain specialized knowledge, our courses cover a range of topics 
                    including Data Science, Business Analytics, Machine Learning, and more. Our online platform provides flexible learning opportunities 
                    that cater to individual schedules and learning styles.
                </p>
                <br>
                <p>
                    Participants benefit from interactive sessions, real-world projects, and guidance from experienced instructors. By the end of the program, 
                    students will have acquired not only theoretical knowledge but also practical insights that can be directly applied in their professional careers.
                </p>
                <br>
                <p>
                    Take the first step toward your goals by enrolling in one of our programs today. Discover how our innovative approach to education can help you 
                    achieve your aspirations and make a meaningful impact in your field.
                </p>
                <br>

                <div class="comment-box">
                    <h3>Leave a Comment</h3>
                    <form id="commentForm" runat="server" class="comment-form" method="post">
    <asp:TextBox ID="Name" runat="server" CssClass="form-control" Placeholder="Enter Name" required></asp:TextBox>
    <asp:TextBox ID="Email" runat="server" CssClass="form-control" Placeholder="Enter Email Id" TextMode="Email" required></asp:TextBox>
    <asp:TextBox ID="Comment" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" Placeholder="Your Comment" required></asp:TextBox>
    <asp:Button ID="SubmitButton" runat="server" CssClass="hero-btn red-btn" Text="POST COMMENT" OnClick="SubmitComment_Click" />
</form>


     

                </div>
            </div>
            <div class="blog-right">
                <h3>Post Categories</h3>
                <div>
                    <span>Business Analytics</span>
                    <span>21</span>
                </div>
                <div>
                    <span>Data Science</span>
                    <span>28</span>
                </div>
                <div>
                    <span>Machine Learning</span>
                    <span>15</span>
                </div>
                <div>
                    <span>Computer Science</span>
                    <span>13</span>
                </div>
                <div>
                    <span>AutoCAD</span>
                    <span>42</span>
                </div>
                <div>
                    <span>Journalism</span>
                    <span>23</span>
                </div>
                <div>
                    <span>Commerce</span>
                    <span>26</span>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer">
        <h4>Blog Page</h4>
        <p>
            Stay updated with the latest insights, trends, and advancements across various domains. Explore articles and resources 
            that cater to your professional and academic interests.
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
