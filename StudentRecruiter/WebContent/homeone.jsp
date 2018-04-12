<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Welcome Page with details</title>
  <link rel="stylesheet" href="css/style.css">
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
  background-image:url('./image/image1.jpg');
  min-height:100%;
}

.pimg2{
  background-image:url('./image/image2.jpg');;
  min-height:400px;
}

.pimg3{
  background-image:url('./image/image3.jpg');;
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

<body>
  <div class="pimg1">
    <div class="ptext">
      <span class="border">
        East Carolina University
      </span>
    </div>
  </div>

  <section class="section section-light">
    <h2>Welcome Future Pirates!</h2>
    <p>
      To begin with, we would like to thank you for considering East Carolina University. We want your campus visit to be informative
      and fun. Pirate Nation is excited to welcome you to our campus. During your campus visit, we want you to have all the
      information you need to make an informed decision about attending college here at East Carolina University. We have
      planned a full day of activities for you from a campus tour, to lunch, to possibly attending a student financial aid
      session if you like. Don't worry, you will have the opportunity to customize your campus visit by choosing which sessions
      you wish to attend. The agenda for your campus visit is outlined below. As you will note, we will begin with registraton
      outside of the Science and Technology Building. Next is an orientation session and two additional informational sessions
      from various departments. We have also included a free lunch in our main dining hall as well as the option for a student
      financial aid Q and A session. Finally, if you are an athlete, you can choose one or two athletic departments to visit
      for a chance to meet and talk with our award winning athletic staff, coaches, and student athletes. Finally, we hope
      you will end your campus visit with a tour of our beautiful campus!
    </p>
  </section>

  <div class="pimg2">
    <div class="ptext">
      <span class="border trans">
        Agenda for the day      </span>
    </div>
  </div>

  <section class="section section-dark">
    <h2>Agenda</h2>
    <p>
      
        <ul>
            <p><u>Morning</u></p>
            <li>7:30 - 8:30am - Registration: Outside the Computer Science Building on the Main Campus.</li>
            <li>8:30 - 9:30 - Orientation and Welcome Session with Dr. Smith, Director of Admissions.</li>
            <li>9:30 - 10:00am - Refreshments and Breakout for Session 2.</li>
            <li>10:00 - 10:45am - Sesson 2:  Gain valuable information from a department.  Do you have a major in mind?</li>
            <li>10:45 - 11:00am - Breakout for Information Session 3.</li>
            <li>11:00 - 11:45am - Session 3:  Information session for your minor or second major department.</li>
            <p><u>Lunch</u></p>
            <li>12:00 - 1:30pm - Lunch at Croatan Hall:  Free to all students that pre-register!</li>
            
            <p><u>Afternoon</u></p>
            <li>1:45 - 2:45pm - Student Financial Aid Session1: Ask questions and get answers <br>about
            paying for college.  Also, learn important dates and deadlines for filing your FAFSA!</li>
            <li>1:45 - 2:45pm - Athletic Session1: Athletes can meet with an athletic department to ask questions.</li>
            <li>3:00 - 4:00pm - Student Financial Aid Session2: Ask questions about paying for college.</li>
            <li>3:00 - 4:00pm - Athletic Session2: Athletes can meet with an athletic department to ask questions.</li>
            <li>3:00 - 4:00pm - Campus Tour1:  Take a tour of the campus and see what ECU has to offer!</li>
            <li>4:00 - 5:00pm - Campus Tour2:  Take a tour of the campus and see what ECU has to offer!</li>
                   </ul>
            
    </p>
  </section>

  <div class="pimg3">
    <div class="ptext">
      <span class="border trans">
        What's next???
      </span>
    </div>
  </div>

  <section class="section section-dark">
    <h2>Next</h2>
    <p>
      On the next page, you will have the opportunity to customize your campus visit by choosing which sessions you want to attend.
      If you are ready to take your future to the next level, click next and begin planning your campus visit to East Carolina
      University. Go Pirates!
    </p>
  </section>

  <div class="pimg1">
    <div class="ptext">
      <span class="border"><a href="User.jsp">
       Next
      </a>
      </span>
    </div>
  </div>
</body>

</html>