<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
      <head>
            <meta charset= ISO-8859-1>
            <title>Welcome for Campus Visit Page</title>
            
	    <style type = "text/css">
		@media all
		{
			body	{ background-color: purple; }
			h1	{ font-size: 65pt;
				  color: gold;
				  font-family: arial; }
			a 	{ text-decoration: none;
    				  display: inline-block;
    				  padding: 8px 16px; }
			a:hover { background-color: #ddd;
    				  color: black; }
			.previous { background-color: #f1f1f1;
    				  color: black;}
			.next 	{ background-color: #4CAF50;
    				  color: white;}
			p	{ font-size: 22pt;
				  color: gold;
				  font-family: arial; }
			ul	{ font-size: 18pt;
				  font-color: gold; }
		}
		@media print
	    </style>	
      </head>
 
      <body>
	    <header>
		<center><img src = "East Carolina 2004.gif" alt = "ECU Logo" /></center>
	    </header>
            <p><h1><strong><center><u>Welcome Future Pirates!</u></center></strong></h1></p>
	    <p></p>
	     <p>Welcome <%=session.getAttribute("name")%> to begin with, we would like to thank you for considering East Carolina University.
		We want your campus visit to be informative and fun.  Pirate Nation is excited to 
		welcome you to our campus.  During your campus visit, we want you
		to have all the information you need to make an informed decision about attending
		college here at East Carolina University.</p>
	    <p></p>
	    <p>We have planned a full day of activities for you from a campus tour, to lunch, to 
		possibly attending a student financial aid session if you like.  Don't worry, you will have the
		opportunity to customize your campus visit by choosing which sessions you wish to
		attend. 
 	    <p></p>
	    <p>The agenda for your campus visit is outlined below. As you will note, we will
		begin with registraton outside of the Science and Technology Building.  Next is 
		an orientation session and two additional informational sessions
		from various departments.  We have also included a free lunch in our
		main dining hall as well as the option for a student financial aid Q & A session.  
		Finally, if you are an athlete, you can choose one or two athletic departments
		to visit for a chance to meet and talk with our award winning athletic
		staff, coaches, and student athletes.  Finally, we hope you will end your campus visit
		with a tour of our beautiful campus!</p>
	    <p></p>

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
		<li>1:45 - 2:45pm - Student Financial Aid Session1: Ask questions and get answers about
		paying for college.  Also, learn important dates and deadlines for filing your FAFSA!</li>
		<li>1:45 - 2:45pm - Athletic Session1: Athletes can meet with an athletic department to ask questions.</li>
		<li>3:00 - 4:00pm - Student Financial Aid Session2: Ask questions about paying for college.</li>
		<li>3:00 - 4:00pm - Athletic Session2: Athletes can meet with an athletic department to ask questions.</li>
		<li>3:00 - 4:00pm - Campus Tour1:  Take a tour of the campus and see what ECU has to offer!</li>
		<li>4:00 - 5:00pm - Campus Tour2:  Take a tour of the campus and see what ECU has to offer!</li>
	       </ul>

	    <p></p>
	    <p>On the next page, you will have the opportunity to customize your campus visit by choosing which sessions
		you want to attend.  If you are ready to take your future to the next level, click next and begin 
		planning your campus visit to East Carolina University.  <em><u>Go Pirates!</em><u></p>


 	    <p><center><a href="myProfile.jsp" class="next">Profile &raquo;</a></center>
  
  
      </body>
</html>