<%-- 
    Document   : registration
    Created on : 7 Mar, 2024, 8:56:18 PM
    Author     : devik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP_registration</title>
        <link rel="stylesheet" href="registration.css">
    </head>
    <body>
        <header>

            <div class="logo">
                <img src="./wss_project/wss_logo1.png" alt="" width="60" height="60">
                <img src="./wss_project/logo_new1.png" alt="" width="120" height="35">
            </div>
            <nav>
                <ul class="links">
                    <li><a href="home.html">Home</a></li>
                    <li><a href="#">About us</a>
                        <ul class="dropdown_menu">
                            <li><a href="objectives_about.html">Objectives of NAARI</a></li>
                            <li><a href="vision_about.html">Vision</a></li>
                            <li><a href="team_about.html">Team</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Videos</a>
                        <ul class="dropdown_menu1">
                            <li><a href="self_defence.html">Self-Defense</a></li>
                            <li><a href="digital_security.html">Digital Security</a></li>
                            <li><a href="travel_safety.html">Travel Safety</a></li>
                            <li><a href="workplace_safety.html">Workplace Safety</a></li>
                            <li><a href="familyHome_safety.html">Family and Home Safety</a></li>
                        </ul>
                    </li>
                    <li><a href="safety_tips.html">Safety Tips</a></li>
                    <li><a href="faq.html">FAQs</a></li>
                    <li><a href="help.html">Help</a></li>
                </ul>
            </nav>
            <button><a href="login.html">Login</a></button>
            <button><a href="profile1.html">Profile</a></button>
        </header>
        <form action="RegisterServlet.java" method="post">
            <center>
                <div class="wrapper">
                    <div class="form-box register">
                        <h2>Registration</h2>
                        <form action="#">
                            <div class="input-box">
                                <span class="icon"></span>
                                <ion-icon name="mail-outline"></ion-icon>
                                <input type="email" required>
                                <label>Email</label>

                            </div>
                            <div class="input-box">
                                <span class="icon"></span>
                                <ion-icon name="lock-closed-outline"></ion-icon>
                                <input type="password" required>
                                <label>Password</label>

                            </div>
                            <div class="input-box">
                                <span class="icon"></span>
                                <ion-icon name="lock-closed-outline"></ion-icon>
                                <input type="password" required>
                                <label>Confirm Password</label>

                            </div>
                            <div class="remember-forgot">
                                <label ><input type="checkbox">I accpet the terms and condition</label>
                            </div>
                            <button type="submit" class="btn">Register</button>
                            <div class="login-register">
                                <p>Already have an account?<a href="login.html" class="login-link">Login</a></p>
                                <p><a href="profile1.html" class="profile-link">Create Profile</a></p>
                                <p><a href="home.html">Back to Home</a></p>
                            </div>
                        </form>

                    </div>

                </div>
            </center>
        </form>

        <script src="script.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script> 



        <%-- Display error message if registration fails --%>
        <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) { %>
        <p style="color: red;">Registration failed. Please try again.</p>
        <% }%>
    </div>

</body>

</html>