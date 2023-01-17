package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;

import com.entities.web;
import com.helper.FactoryProvider;


public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public CheckLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		try {
			Session s = FactoryProvider.getFactory().openSession();
			String query = "from web where username=:username and pass1=:pass1"; 
			Query q = s.createQuery(query);
			q.setParameter("username", request.getParameter("username"));
			q.setParameter("pass1", request.getParameter("password"));
			
			web result = (web)q.uniqueResult();
			HttpSession hs = request.getSession();
			if(result!=null) {
				hs.setAttribute("firstname", result.getFirstname());
				hs.setAttribute("lastname", result.getLastname());
				hs.setAttribute("username", result.getUsername());
				hs.setAttribute("pass1", result.getPass1());
				hs.setAttribute("phone", result.getPhone());
				hs.setAttribute("address", result.getAddress());
				hs.setAttribute("city", result.getCity());
				hs.setAttribute("state", result.getState());
				hs.setAttribute("gender", result.getGender());
				hs.setAttribute("dob", result.getDate());
				
				response.sendRedirect("Dashboard.jsp");
			}
			if(result==null){
				response.sendRedirect("loginfail.jsp");
			}
			out.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
