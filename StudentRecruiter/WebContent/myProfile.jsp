<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.*" %>
<%@page import="com.amzi.dao.User"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<body>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>ECU Student Recruiter</title>
 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap-grid.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style type="text/css">
* {
  box-sizing: border-box;
}

body {
  background: #a661d6;
  color: #4886c4;
  line-height: 1.6;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  padding: 1em;
}

.container {
  max-width: 1170px;
  margin-left: auto;
  margin-right: auto;
  padding: 1em;
}

ul {
  list-style: none;
  padding: 0;
}

.brand {
  text-align: center;
}

.brand span {
  color: #fff;
}

.wrapper {
  box-shadow: 0 0 20px 0 rgba(72, 94, 116, 0.7);
}

.wrapper>* {
  padding: 1em;
}

.company-info {
  background: #c9e6ff;
}

.company-info h3,
.company-info ul {
  text-align: center;
  margin: 0 0 1rem 0;
}

.contact {
  background: #f9feff;
}


/* FORM STYLES */

.contact form {
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-gap: 20px;
}

.contact form label {
  display: block;
}

.contact form p {
  margin: 0;
}

.contact form .full {
  grid-column: 1 / 3;
}

.contact form button,
.contact form input,
.contact form textarea {
  width: 100%;
  padding: 1em;
  border: 1px solid #c9e6ff;
}

.contact form button {
  background: #c9e6ff;
  border: 0;
  text-transform: uppercase;
}

.contact form button:hover,
.contact form button:focus {
  background: #92bde7;
  color: #fff;
  outline: 0;
  transition: background-color 2s ease-out;
}

.alert {
  text-align: center;
  padding: 10px;
  background: #79c879;
  color: #fff;
  margin-bottom: 10px;
  display: none;
}


/* LARGE SCREENS */

@media(min-width:700px) {
  .wrapper {
    display: grid;
    grid-template-columns: 1fr 2fr;
  }
  .wrapper>* {
    padding: 2em;
  }
  .company-info h3,
  .company-info ul,
  .brand {
    text-align: left;
  }
}


</style>
  <style type="text/css">
  body, html{
  height:100%;
  margin:0;
  font-size:16px;
  font-family:"Lato", sans-serif;
  font-weight:400;
  line-height:1.8em;
  color:#666;
}

.pimg1, .pimg2, .pimg3{
  position:relative;
  opacity:0.70;
  background-position:center;
  background-size:cover;
  background-repeat:no-repeat;

  /*
    fixed = parallax
    scroll = normal
  */
  background-attachment:fixed;
}

.pimg1{
  background-image:url('../images/image1.jpg');
  min-height:100%;
}

.pimg2{
  background-image:url('../images/image2.jpg');;
  min-height:400px;
}

.pimg3{
  background-image:url('../images/image3.jpg');;
  min-height:400px;
}

.section{
  text-align:left;
  padding:50px 80px;
}

.section-light{
  background-color:#f4f4f4;
  color:#666;
}

.section-dark{
  background-color:#282e34;
  color:#ddd;
}

.ptext{
  position:absolute;
  top:50%;
  width:100%;
  text-align:center;
  color:#000;
  font-size:27px;
  letter-spacing:8px;
  text-transform:uppercase;
}

.ptext .border{
  background-color:#111;
  color:#fff;
  padding:20px;
}

.ptext .border.trans{
  background-color:transparent;
}

@media(max-width:568px){
  .pimg1, .pimg2, .pimg3{
    background-attachment:scroll;
  }
}  
  </style>
  <%
   try
   {  Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection conn = DriverManager.getConnection("jdbc:mysql://198.91.85.78/stude120_SENGGroup","stude120_admin","admin");
	
	  String email = (String) session.getAttribute("email");
	 /*   out.println("This is the value of session in string " + email); */
       String query="select * from Student where firstName=?";
       //out.println("" + query);
       PreparedStatement pst = conn.prepareStatement("select * from Student where firstName=?");
       pst.setString(1, email);
       
       ResultSet rs=pst.executeQuery();
      
       /* Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query); */
       while(rs.next())
       {
   %>
<form method="post">

 <div class="container">
    <h1 class="brand">
      <span>ECU</span> Student Recruiter</h1>
    <div class="wrapper">
      <div class="company-info">
        <h3>EAST CAROLINA UNIVERSITY</h3>
        <ul>
          <li>
            <i class="fa fa-road"></i> E 5 st, Greenville, NC, 27858</li>
          <li>
            <i class="fa fa-phone"></i> (252)-328-6131 </li>
          <li>
            <i class="fa fa-envelope"></i> studentrecruiter@ecu.edu</li>
        </ul>
      </div>
	   <div class="contact">
        <h3>Personal Information</h3>
		 User ID       :<tr><td><%out.println(" " + rs.getString("studentId")); %></td></tr><br>
         First Name    :<tr><td><%out.println(" "+rs.getString("firstName")); %></td></tr><br>
         Date Of Birth :</td><td><%out.println(" " +rs.getString("birthDate")); %></td></tr><br>
         Gender        :</td><td><%out.println(" " +rs.getString("gender")); %></td></tr><br>
         Email         :</td><td><%out.println(" " +rs.getString("email")); %></td></tr><br>
         Telephone     :</td><td><%out.println(" " +rs.getString("telephone")); %></td></tr><br>
         Street        :</td><td><%out.println(" " +rs.getString("street")); %></td></tr><br>
         City          :</td><td><%out.println(" " +rs.getString("city")); %></td></tr><br>
         State         :</td><td><%out.println(" " +rs.getString("state")); %></td></tr><br>
         Zip           :</td><td><%out.println(" " +rs.getInt("zip")); %></td></tr><br>
         Major Id      :</td><td><%out.println(" " +rs.getString("majorId")); %></td></tr><br>
         Session 1     :</td><td><%out.println(" " +rs.getString("department1")); %></td></tr><br>
         Session 2     :</td><td><%out.println(" " +rs.getString("department2")); %></td></tr><br>
         Session 3     :</td><td><%out.println(" " +rs.getString("department3")); %></td></tr><br>
         Athletic 1    :</td><td><%out.println(" " +rs.getString("athletic1")); %></td></tr><br>
         Athletic 2    :</td><td><%out.println(" " +rs.getString("athletic2")); %></td></tr><br>
         No Session    :</td><td><%out.println(" " +rs.getString("noSession")); %></td></tr><br>
         Campus Tour   :</td><td><%out.println(" " +rs.getString("campusTour")); %></td></tr><br>
         Lunch         :</td><td><%out.println(" " +rs.getString("lunch")); %></td></tr><br>
         Student Aid   :</td><td><%out.println(" " +rs.getString("studentAid")); %></td></tr><br>
       
		
          
      </div>
    </div>
  </div>

   <script>
 
// Reference messages collection
var messagesRef = firebase.database().ref('messages');

// Listen for form submit
document.getElementById('contactForm').addEventListener('submit', submitForm);

// Submit form
function submitForm(e){
  e.preventDefault();


  // Show alert
  document.querySelector('.alert').style.display = 'block';

  // Hide alert after 3 seconds
  setTimeout(function(){
    document.querySelector('.alert').style.display = 'none';
  },3000);

  // Clear form
  document.getElementById('contactForm').reset();
}

  </script>

  
   <%
       }
   %>
   
  
   <%
        rs.close();
        
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
</form>   

  
  </head>
</body>

</html>