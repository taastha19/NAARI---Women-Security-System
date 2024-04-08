
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
        href="https://fonts.googleapis.com/css2?family=Kalnia:wght@100;200;600&family=Lato:ital,wght@0,100;0,300;0,400;0,700;1,300;1,700&family=Playfair+Display:ital,wght@0,600;0,700;1,400&family=Roboto:wght@400;900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="profile1.css">
    <link href="profile1.css" rel="stylesheet" type="text/css"/>
    <title>profile</title>
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
    <form name="f3">
        
        <center>
        
        <div class="container1 glass">
            <div class="Personal_Information "> 
                <h3 align="center">Personal Information</h3>
                
                    <div class="input-box1">
                        <label>User Name</label>
                        <input type="text" size=40 name="uname" required>
                    </div>
                    <div class="input-box2">                        
                        <label>Date Of birth</label>
                        <input type="date" size=50 name="dob" required>
                    
                    </div>
                    <div class="input-box3">
                        <label>Email</label>
                        <input type="text" size=40 name="uemail" required>
                    
                    </div>
               
            </div>    
            <div class="Guardian Information">
                <h3>Guardian Information</h3>
                
                    <div class="input-box1">
                        <label>Name</label>
                        <input type="text" size="40" name="g1name" required>
                    </div>
                    
                    <!-- <label for="contact">Select a Guardian:</label> -->
                    <label class="contact">Select Guardian 1:</label>

                    <select  class="relation" name="g1relationship">
                        <option value="none">None</option>
                        <option value="mother">Mother</option>
                        <option value="father">Father</option>
                        <option value="sibling">Sibling</option>
                        <option value="friend">Friend</option>
                        <option value="guardian">Guardian</option>
                    </select>
                    <div class="input-box3">
                        <label>email</label>
                        <input type="text" size=40 name="g1email" required>
                    </div>
                    
                    <div class="input-box1">
                        <label>Name</label>
                        <input type="text" size="40" name="g2name" required>
                    </div>
                    <label class="contact">Select Guardian 2:</label>
                    <select  class="relation" name="g2relationship">
                        <option value="none">None</option>
                        <option value="mother">Mother</option>
                        <option value="father">Father</option>
                        <option value="sibling">Sibling</option>
                        <option value="friend">Friend</option>
                        <option value="guardian">Guardian</option>
                    </select>
                    <div class="input-box3">
                        <label>email</label>
                        <input type="text" size=40 name="g2email" required>
                    </div>
                    
                   
            </div>
            <div class="Health Information">
                <h3>Health Information</h3>
                    
                        <div class="input-box3">
                            <label>Height</label>
                            <input type="text" size ="40" name="height" required>
                        </div>
                        <div class="input-box3">
                            <label>Weight</label>
                            <input type="text" size="40" name="weight" required>
                        </div>
                        <div class="input-box1">
                            <label>Blood Group</label>
                            <input type="text" size="30" name="bloodgroup" required>
                        </div>
                    <div class="input-box1">
                        <label>Medical Issues</label>
                        <input type="text" size="30" name="medicalissues" required>
                    
                    </div>
                    
                 

             </div>
        
        <div class="pbutton">
            <!--<button><a class="pbutton">Create</a></button>-->
            <input type="submit" name="b2" value="Create" class="button">
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
        String name = request.getParameter("uname");
        String uemail = request.getParameter("uemail");
        String dob = request.getParameter("dob");
        String g1name = request.getParameter("g1name");
        String g1relationship = request.getParameter("g1relationship");
        String g1email = request.getParameter("g1email");
        String g2name = request.getParameter("g2name");
        String g2relationship = request.getParameter("g2relationship");
        String g2email = request.getParameter("g2email");
        String height= request.getParameter("height");
        String weight= request.getParameter("weight");
        String bloodgroup= request.getParameter("bloodgroup");
        String medicalissues= request.getParameter("medicalissues");
        
        if(request.getParameter("b2")!=null)
        {
            try {
                
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/womensecuritysystem","naari","naari");
                String sql = "INSERT INTO profileinfo VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement preparedStatement = conn.prepareStatement(sql);
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, uemail);
                preparedStatement.setString(3, dob);
                preparedStatement.setString(4, g1name);
                preparedStatement.setString(5, g1relationship );
                preparedStatement.setString(6, g1email);
                preparedStatement.setString(7, g2name);
                preparedStatement.setString(8, g2relationship);
                preparedStatement.setString(10, height);
                preparedStatement.setString(9, g2email);
                preparedStatement.setString(11, weight);
                preparedStatement.setString(12, bloodgroup);
                preparedStatement.setString(13, medicalissues);
                
                int rowsAffected = preparedStatement.executeUpdate();
                if (rowsAffected > 0) 
                {
                    
                    response.sendRedirect("home.html");
                } 
               
                else
                {
                    response.sendRedirect("profilejsp.jsp");
                }
                
            } catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }
        }
            
        
        
    %>
