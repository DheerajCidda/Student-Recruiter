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
  background-image: url("./image/students.jpg");
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
  color: rgb(0, 0, 0);
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
    <h1 style="font-size:50px">Welcome to StudentRecruiter!!</h1>
    <p>Here at StudentRecruiter, we can help you customize your campus visit. Whether you are a student or a college administrator, StudentRecruiter can help you make your campus visit the best experience possible.</p>
    
    <a href="homeone.jsp"> <button>Next!! </button></a>
    
  </div>
</div>


</body>
</html>
