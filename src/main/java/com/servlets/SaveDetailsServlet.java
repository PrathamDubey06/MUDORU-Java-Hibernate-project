package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.web;
import com.helper.FactoryProvider;


public class SaveDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaveDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String username = request.getParameter("username");
			long phone = Long.parseLong(request.getParameter("phone"));
			String date = request.getParameter("date");
			String gender = request.getParameter("gender");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String address = request.getParameter("address");
			String pass1 = request.getParameter("pass1");
			
			
			web obj = new web(firstname,lastname,username,phone,date,gender,city,state,address,pass1);
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(obj);
			tx.commit();
			s.close();
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.print("<h1>Data is registered</h1>");
			response.sendRedirect("Login.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
