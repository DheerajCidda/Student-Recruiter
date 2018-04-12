package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.amzi.dao.*;

public class LoginServlet extends HttpServlet{

    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  

        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        
        String n=request.getParameter("username");  
        String p=request.getParameter("userpass"); 
       
        
        HttpSession session = request.getSession(false);
        if(session!=null)
        session.setAttribute("email", n);

        
               if(LoginDao.validate(n, p))
               {
//            	   Userdao ud = new Userdao();
//                   User uu=ud.allData(n);
//            	   System.out.println(n);
//                   session.setAttribute("data1", uu);
            	   RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");  
                   rd.forward(request,response);  
                    
        }  
        else{  
            out.print("<p style=\"color:red\">Sorry username or password error</p>");  
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
            rd.include(request,response);  
        }  

        out.close();  
    }  
} 