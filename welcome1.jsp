<%-- 
    Document   : welcome1
    Created on : 7 Mar, 2024, 10:34:27 PM
    Author     : devik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="welcome1.css">
    </head>
    <body>
        <header>
            <div class="logo">
                <img src="./wss_project/wss_logo1.png" alt="" width="60" height="60">
                <img src="./wss_project/logo_new1.png" alt="" width="120" height="35">
            </div>
            <nav>
                <ul class="links">
                    <li><a href="home.html">Home</a>
                    <li><a href="#">About us</a>
                        <ul class="dropdown_menu">
                            <li><a href="objectives_about.html">Objectives of NAARI</a></li>
                            <li><a href="vision1.html">Vision</a></li>
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
            <button><a href="profile1.html">Profile</a></button>
        </header>
        <div class="container">
            <div class="row">
                <div class="banner">
                    <img src="./wss_project/women_picc5.png" alt="img">                
                </div>
            </div>
        </div>
        <div class="container1 glass">
            <h1 class="text1">Women's safety is<br>not negotiable,</br>it's a basic human right</h1>
        </div>
        <div class=" container2">
            <div class="gallery1">
                <img src="./wss_project/monitoring.png" alt="" width="50" height="50" class="galleryImg">
                <h1 class="galleryTitle">24/7 Monitoring</h1>
            </div>
            <div class="gallery1">
                <img src="./wss_project/siren.png" alt=""  width="55" height="55" class="galleryImg">
                <h1 class="galleryTitle">Emergency Alert</h1>
            </div>
            <div class="gallery1">
                <img src="./wss_project/gpss.png" alt=""  width="50" height="50" class="galleryImg">
                <h1 class="galleryTitle">GPS Tracking</h1>
            </div>
            <div class="gallery1">
                <img src="./wss_project/sos.png" alt="" width="50" height="50"  class="galleryImg">
                <h1 class="galleryTitle">SOS Notification</h1>
            </div>
            <div class="gallery1">
                <img src="./wss_project/self_defence.png" alt=""  width="50" height="50" class="galleryImg">
                <h1 class="galleryTitle">Self Defence<br>Resources</h1>
            </div>
        </div>
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    </body>
</html>
