<%@ page import="java.util.*,java.io.*" %>
<html>
<head>
    <title>Send Live Location</title>
</head>
<body>
    <h1>Send Live Location</h1>
    <form action="processLocation.jsp">
        <input type="submit" value="Send Location">
    </form>
</body>
</html>


<%@ page import="java.util.*,java.io.*" %>
<html>
<head>
    <title>Process Location</title>
    <script>
        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            } else { 
                document.getElementById("result").innerHTML = "Geolocation is not supported by this browser.";
            }
        }

        function showPosition(position) {
            var lat = position.coords.latitude;
            var lon = position.coords.longitude;
            var link = "https://www.google.com/maps/search/?api=1&query=" + lat + "," + lon;
            document.getElementById("result").innerHTML = "<a href='" + link + "'>Click here to view your location on Google Maps</a>";
        }
    </script>
</head>
<body onload="getLocation()">
    <div id="result"></div>
</body>
</html>