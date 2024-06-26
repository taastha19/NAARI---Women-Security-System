<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
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
    <form action="resgisterationjsp.jsp" method="post">
        <center>
        <div class="wrapper">
            <div class="form-box register">
                 <h2>Registration</h2>
                 <form action="#">
                    <div class="input-box">
                        <span class="icon"></span>
                        <ion-icon name="mail-outline"></ion-icon>
                        <input type="email"  name="txtmail"required> 
                        <label>Email</label>
    
                    </div>
                    <div class="input-box">
                        <span class="icon"></span>
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" name="txtpwd" required>
                        <label>Password</label>
                        
                    </div>
                    <div class="input-box">
                        <span class="icon"></span>
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" name="txtcnfpwd" required>
                        <label>Confirm Password</label>
                        
                    </div>
                    <div class="remember-forgot">
                        <label ><input type="checkbox">I accpet the terms and condition</label>
                    </div>
                    <button type="submit" class="btn">Register</button>
                    <div class="login-register">
                        <p>Already have an account?<a href="login.html" class="login-link">Login</a></p>
                        <p><a href="profile1.html" class="profile-link">Create Profile</a></p>
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
     String n=request.getParameter("txtmail");
        String p=request.getParameter("txtpwd");
        String c=request.getParameter("txtcnfpwd");
        //PrintWriter out=response.getWriter();
        try
        {
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/User_profile ","devika","devika");
            
            PreparedStatement ps=conn.prepareStatement("Insert into registeration values(?,?,?)");
            ps.setString(1, n);
            ps.setString(1, p);
            ps.setString(1, c);
            int count=ps.executeUpdate();
            if(count>0)
            {
                response.setContentType("text/html");
                out.print("<h3 style='color:green' > User registered Successfully</h3>");
                RequestDispatcher rd=request.getRequestDispatcher("/registerationjsp.jsp");
                rd.include(request, response);
            }
            else
            {
                response.setContentType("text/html");
                out.print("<h3 style='color:red' > User not registered Successfully</h3>");
                RequestDispatcher rd=request.getRequestDispatcher("/registerationjsp.jsp");
                rd.include(request, response);
            }
        }catch(Exception ex)
        {
            ex.printStackTrace();
            
        }
    %>