<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>


<html>
    <head>
        <title></title>
         
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body bgcolor="purple">
        <script>
         document.addEventListener("onload",()=>{
             console.log("Hii");
         });    
         
       function f(){
           if (navigator.geolocation) {
               console.log("Hello");
                navigator.geolocation.getCurrentPosition(showPosition);
                
            } else { 
                document.getElementById("result").innerHTML = "Geolocation is not supported by this browser.";
            }
        }
         function showPosition(position) {
            var lat = position.coords.latitude;
            var lon = position.coords.longitude;
            var link = "https://www.google.com/maps/search/?api=1&query=" + lat + "," + lon;
            document.getElementById("location").setAttribute("value",link);
            out.println(link);
            document.emailForm.submit();
            
            
        }
        
    </script>
       
        <form name="emailForm" method="get">
            <input visibility="hidden" type="text" name="location" id="location">
<table>
<tr><td><b><font color="white">To:
</td>
<td><b><b><input type="text" name="mail" placeholder="Enter sender mail-id"/><br/>
</td>
<tr>
<td>
<input type="submit" color="pink" value="Send" name="btn1" onclick="f()" >

</td>
<td>
<input type="reset" value="Reset">
</td>
</tr>
</table>
</form>

    </body>
</html>



<%
    if (request.getParameter("btn1") != null)
{
//Creating a result for getting status that messsage is delivered or not!
String result;


// Get recipient's email-ID, message & subject-line from mail.html page
final String to = request.getParameter("mail");
String location=request.getParameter("location");
out.println(location);
//final String subject = request.getParameter("sub");
//final String html="<a href=''>Location</a>";

// Sender's email ID and password needs to be mentioned
final String from = "deepanshisharma528@gmail.com";
final String pass = "bereuinnppvmaesn";

// Defining the gmail host
String host = "smtp.gmail.com";
InternetHeaders headers=new InternetHeaders();
headers.addHeader("Content-type","text/html; chartset=UTF-8");

// Creating Properties object
Properties props = new Properties();

// Defining properties
props.put("mail.smtp.ssl.enable", "true");
props.put("mail.smtp.host", host);
props.put("mail.transport.protocol", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
//props.put("mail.user", from);
//props.put("mail.password", pass);
props.put("mail.port", "465"); // there are some other ports also available

// Authorized the Session object.
Session mailSession = Session.getInstance(props, new Authenticator() {
@Override
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication(from, pass);
}
});

try {
// Create a default MimeMessage object.
Message message = new MimeMessage(mailSession);

// Set From: header field of the header.
message.setFrom(new InternetAddress(from));

// Set To: header field of the header.
message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));

// Set Subject: header field
//message.setSubject(subject);

// Now set the actual message
message.setText("[Safety & Emergency] I'm in an emergency and need your help. Please Contact me asap as soon as you can.View my location at "+location);


// Send message
Transport.send(message);
result = "Your mail sent successfully....";
out.println(result);
} catch (MessagingException mex) {
mex.printStackTrace();
result = "Error: unable to send mail....";
out.println(mex);
out.println(result);}
}

 %>