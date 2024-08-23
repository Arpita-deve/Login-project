package com.demoproject.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demoproject.model.DAOServiceImpl;

@WebServlet("/delete")
public class DeleteRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DeleteRegController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("emailId");
		DAOServiceImpl service=new DAOServiceImpl();
		service.connectDB();
		service.deleteRegistration(email);
		
		ResultSet result=service.getAllRegistration();
		request.setAttribute("res", result);
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/list_registration.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
