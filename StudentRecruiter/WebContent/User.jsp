<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>
body, html {
    height: 100%;
    margin: 0;
}

.hero-image {
  background-image: url("./image/visit_1.jpg");
  height: 100%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}

.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: rgb(82, 207, 238);
  text-align: center;
  cursor: pointer;
}

.hero-text button:hover {
  background-color: #555;
  color: white;
}
</style>
</head>
<body>

<div class="hero-image">
  <div class="hero-text">
    <h1 style="font-size:50px">Are you a new student or checking your schedule?</h1>
    <p>New students will need to register on the next page by clicking on the New Student Button</p>
    <p>Returning students can check the schedule by clicking Check Schedule Button</p>
    <a href="registration.jsp"><button>New student!!</button></a> 
    <a href="myProfile.jsp"> <button > Check Schedule !!</button></a>
  </div>
</div>


</body>
</html>
