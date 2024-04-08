<%-- 
    Document   : login
    Created on : 7 Mar, 2024, 8:55:30 PM
    Author     : devik
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="login.css">
    </head>
    <body>

</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP_Login</title>
        <link rel="stylesheet" type="text/css" href="login.css">
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
                    <li><a href="safety_tips.html">Saftey Tips</a></li>
                    <li><a href="faq.html">FAQs</a></li>
                    <li><a href="help.html">Help</a></li>
                </ul>
            </nav>
            <button><a href="login.html">Login</a></button>
            <button><a href="profile1.html">Profile</a></button>
        </header>
        <form name="f1" method='post'>
            <center>
                <div class="wrapper">
                    <div class="form-box login">
                        <h2>Login</h2>
                        <form action="#">
                            <div class="input-box">
                                <span class="icon"></span>
                                <ion-icon name="mail-outline"></ion-icon>
                                 <input type="text" id="email" name="email" required><br>
                                <label for="email">Email</label>

                            </div>
                            <div class="input-box">
                                <span class="icon"></span>
                                <ion-icon name="lock-closed-outline"></ion-icon>
                                 <input type="password" id="password" name="password" required><br>
                                <label for="password">Password</label>

                            </div>
                            <div class="remember-forgot">
                                <label ><input type="checkbox">Remember me</label>
                                <a href="#">Forgot Password?</a>
                            </div>
                            <input type="submit" name="b3" value="Login" class="btn">
                            <div class="login-register">
                                <p>Don't have an account?<a href="registration.html" class="register-link">Register</a></p>
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

    
</body>
</html>
<% 
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        

        if (request.getParameter("b3")!=null) {
            try {
                out.print(email);
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/womensecuritysystem","naari","naari");
                String sql = "Select email,password from users where email=? and password=?";
                PreparedStatement preparedStatement = conn.prepareStatement(sql);
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, password);
                
                ResultSet rs = preparedStatement.executeQuery();
                boolean status=false;
                status=rs.next();
                if (status) 
                {
                    response.sendRedirect("HomeAfterLogin.html");
                } 
                else 
                {
                    response.sendRedirect("login1.jsp");
                }
                conn.commit();
                
            } catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }
        }
        
%>
