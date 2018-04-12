<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.*" %>
<%@page import="com.amzi.dao.User"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
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
 Last Name:<br> <input type="text" name="lastName" value = <%out.println(rs.getInt("studentId")); %> ><br>
<table border="2">
  <tr> 
  
        <tr><td>User ID</td><td><%out.println(rs.getInt("studentId")); %></td></tr>
        <tr><td>First Name</td><td><%out.println(rs.getString("firstName")); %></td></tr>
        <tr><td>Last Name</td><td><%out.println(rs.getString("lastName")); %></td></tr>
        <tr><td>Date Of Birth</td><td><%out.println(rs.getString("birthDate")); %></td></tr>
        <tr><td>Gender</td><td><%out.println(rs.getString("gender")); %></td></tr>
        <tr><td>Email</td><td><%out.println(rs.getString("email")); %></td></tr>
        <tr><td>Telephone</td><td><%out.println(rs.getString("telephone")); %></td></tr>
        <tr><td>Street</td><td><%out.println(rs.getString("street")); %></td></tr>
        <tr><td>City</td><td><%out.println(rs.getString("city")); %></td></tr>
        <tr><td>State</td><td><%out.println(rs.getString("state")); %></td></tr>
        <tr><td>Zip</td><td><%out.println(rs.getInt("zip")); %></td></tr>
        <tr><td>Major Id</td><td><%out.println(rs.getString("majorId")); %></td></tr>
        <tr><td>Department 1</td><td><%out.println(rs.getString("department1")); %></td></tr>
        <tr><td>Department 2</td><td><%out.println(rs.getString("department2")); %></td></tr>
        <tr><td>Department 3</td><td><%out.println(rs.getString("department3")); %></td></tr>
        <tr><td>Athletic 1</td><td><%out.println(rs.getString("athletic1")); %></td></tr>
        <tr><td>Athletic 2</td><td><%out.println(rs.getString("athletic2")); %></td></tr>
        <tr><td>No Session</td><td><%out.println(rs.getString("noSession")); %></td></tr>
        <tr><td>Campus Tour</td><td><%out.println(rs.getString("campusTour")); %></td></tr>
        <tr><td>Lunch</td><td><%out.println(rs.getString("lunch")); %></td></tr>
        <tr><td>Student Aid</td><td><%out.println(rs.getString("studentAid")); %></td></tr>
           </tr>
  
 
   
        
          <%--  <td><%out.println(rs.getInt("studentId")); %></td>
           <tr><td><%out.println(rs.getString("firstName")); %></td></tr>
           <tr><td><%out.println(rs.getString("lastName")); %></td></tr>
           <tr><td><%out.println(rs.getString("birthDate")); %></td></tr>
           <tr><td><%out.println(rs.getString("gender")); %></td></tr>
           <tr><td><%out.println(rs.getString("email")); %></td></tr>
           <tr><td><%out.println(rs.getString("telephone")); %></td></tr>
           <tr><td><%out.println(rs.getString("street")); %></td></tr>
           <tr><td><%out.println(rs.getString("city")); %></td></tr>
           <tr><td><%out.println(rs.getString("state")); %></td></tr>
           <tr><td><%out.println(rs.getInt("zip")); %></td></tr>
           <tr><td><%out.println(rs.getString("majorId")); %></td></tr>
           <tr><td><%out.println(rs.getString("department1")); %></td></tr>
           <tr><td><%out.println(rs.getString("department2")); %></td></tr>
           <tr><td><%out.println(rs.getString("department3")); %></td></tr>
           <tr><td><%out.println(rs.getString("athletic1")); %></td></tr>
           <tr><td><%out.println(rs.getString("athletic2")); %></td></tr>
           <tr><td><%out.println(rs.getString("noSession")); %></td></tr>
           <tr><td><%out.println(rs.getString("lunch")); %></td></tr>
           <tr><td><%out.println(rs.getString("studentAid")); %></td></tr> --%>

   <%
       }
   %>
   
   </table>
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
<body>
</body>
</html>