<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="registration.css">
    <link href="../registration.css" rel="stylesheet" type="text/css"/>
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
    
        <center>
        <div class="wrapper">
            <div class="form-box register">
                 <h2>Registration</h2>
                 <form  method="post">
                    <div class="input-box">
                        <span class="icon"></span>
                        <ion-icon name="mail-outline"></ion-icon>
                        <input type="email"  name="email"required> 
                        <label>Email</label>
    
                    </div>
                    <div class="input-box">
                        <span class="icon"></span>
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" name="password" required>
                        <label>Password</label>
                        
                    </div>
                    <div class="input-box">
                        <span class="icon"></span>
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" name="confirmpassword" required>
                        <label>Confirm Password</label>
                        
                    </div>
                    <div class="remember-forgot">
                        <label ><input type="checkbox">I accept the terms and condition</label>
                    </div>
                     <input type="submit" name="b1" value="Register" class="btn">
                    <div class="login-register">
                        <p>Already have an account?<a href="login.html" class="login-link">Login</a></p>
                        <p><a href="profile1.html" class="profile-link">Create Profile</a></p>
                    </div>
                </form>
    
            </div>
            
        </div>
    </center>
    
        
   
    <script src="script.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script> 
    
</body>
</html>
<% 
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmpassword = request.getParameter("confirmpassword");

        if (request.getParameter("b1")!=null) {
            try {
                out.print(email);
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/womensecuritysystem","naari","naari");
                String sql = "INSERT INTO users (email, password,confirmpassword) VALUES (?,?,?)";
                PreparedStatement preparedStatement = conn.prepareStatement(sql);
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, password);
                preparedStatement.setString(3, confirmpassword);
                int rowsAffected = preparedStatement.executeUpdate();
                if (rowsAffected > 0) 
                {
                    response.sendRedirect("home.html");
                } 
                else 
                {
                    response.sendRedirect("registerationjsp_1.jsp");
                }
                conn.commit();
                
            } catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }
        }
        
    %>

