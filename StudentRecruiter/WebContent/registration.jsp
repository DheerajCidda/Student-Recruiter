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
</head>


    <form action="RegisterServlet" method="post">

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
       
        
         Last Name:<br>
  <input type="text" name="lastName" required><br>
 
          First Name:<br>
  <input type="text" name="firstName" required><br>
  
  BirthDate(MM/DD/YYYY):<br>
  <input type="date" name="birthDate" required><br>
  
   Gender:<br>
                  <select name="gender" required/>
                        <option value = "Female">Female</option>
                        <option value = "Male">Male</option>
                        <option value = "Transgender">Transgender</option>
                  </select><br>
  
 	Email: <br>
  <input type="email" name="email" required><br>
  <br>
 
 
  Phone (10 digits non spaced):<br>
  <input type="text" name="telephone" required><br>
 
	StreetAddress:<br>
  <input type="text" name="street" required><br>
  
   City:<br>
  <input type="text" name="city" required><br>
  
  State:<br>
  <input type="text" name="state" required><br>
  
  Zip Code:<br>
  <input type="text" name="zip" required><br>
  
  <h3>II.Personalize the Events you have</h3>

          <p></p>
          <label>
            Academic Session 1:
            <select name="department1" required/>

            <option value="1">Computer Science</option>
            <option value="2">English</option>
            <option value="3">Art</option>
            <option value="4">Biology</option>
            <option value="5">Philosophy</option>
            <option value="6">Physics</option>
            </select>
          </label>
          </p>
          <p>
            <label>
              Academic Session 2:
              <select name="department2" required/>
              <option value="0">None</option>
              <option value="1">Computer Science</option>
              <option value="2">English</option>
              <option value="3">Art</option>
              <option value="4">Biology</option>
              <option value="5">Philosophy</option>
              <option value="6">Physics</option>
              </select>
            </label>
          </p>
          <p>
            <label>
              Academic Session 3:
              <select name="department3" required/>
              <option value="0">None</option>
              <option value="1">Computer Science</option>
              <option value="2">English</option>
              <option value="3">Art</option>
              <option value="4">Biology</option>
              <option value="5">Philosophy</option>
              <option value="6">Physics</option>
              </select>
            </label>
          </p>
          <p>
            <label>
              Athletic Session 1:
              <select name="athletic1" required/>
              <option value="0">None</option>
              <option value="7">Soccer</option>
              <option value="8">Baseball</option>
              <option value="9">Swimming</option>
              <option value="10">Football</option>
              </select>
            </label>
          </p>
          <p>
            <label>
              Athletic Session 2:
              <select name="athletic2" required/>
              <option value="0">None</option>
              <option value="7">Soccer</option>
              <option value="8">Baseball</option>
              <option value="9">Swimming</option>
              <option value="10">Football</option>
              </select>
            </label>
          </p>

          <p>
            <label>
              Would you like to opt out of a session?
              <select name="noSession" required/>
              <option value="0">No</option>
              <option value="1">Yes</option>
              </select>
            </label>
          </p>
          <p>
            <label>
              Would you like a campus tour?
              <select name="campusTour" required/>
              <option value="0">No</option>
              <option value="1">Yes</option>
              </select>
            </label>
          </p>
          <p>
            <label>
              Will you join us for lunch on campus?
              <select name="lunch" required/>
              <option value="0">No</option>
              <option value="1">Yes</option>
              </select>
            </label>
            <p>
              <label>
                Would you like a financial aid session?
                <select name="studentAid" required/>
                <option value="0">No</option>
                <option value="1">Yes</option>
                </select>
              </label>
            </p>
          </p>

          <br>
          <p class="full">
            <button type="submit">Submit</button>
          </p>
       
      </div>
    </div>
  </div>
</form>
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
</body>

</html>