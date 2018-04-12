package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.User;
import com.amzi.dao.Userdao;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		
		
		String firstname =request.getParameter("firstName");
		String lastname = request.getParameter("lastName");
		String dob =request.getParameter("birthDate"); 
		String gender =request.getParameter("gender"); 
		String email =request.getParameter("email"); 
		String phonenum =request.getParameter("telephone");  
		String address =request.getParameter("street");  
		String city =request.getParameter("city");  
		String state=request.getParameter("state");  
		String zip =request.getParameter("zip");  
		//major id
		String majorId = "0";
		String dept1 =request.getParameter("department1");  
		String dept2 =request.getParameter("department2");       
		String dept3 = request.getParameter("department3");
		String athletic1 =request.getParameter("athletic1");
		String athletic2 =request.getParameter("athletic2");
		//no session
		String noSession = request.getParameter("noSession");
		String campustour =request.getParameter("campusTour");
		String lunch = request.getParameter("lunch");
		String studentaid =request.getParameter("studentAid");
	
	
			User u = new com.amzi.dao.User(firstname,lastname,dob,gender,email,phonenum,address,city,state,zip,majorId,dept1,dept2,dept3, athletic1, athletic2,noSession, campustour, lunch, studentaid);
			Userdao ud = new Userdao();
			ud.insertData(u);
			out.print("success");
			HttpSession session=request.getSession();
			
			session.setAttribute("user", u);
			request.getRequestDispatcher("index.jsp").include(request, response);
	}

}
