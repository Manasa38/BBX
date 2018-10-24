package com.training.controllers;

import java.io.IOException;





import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Login;
import com.training.bean.UserBean;

/**
 * Servlet implementation class LoginCheckServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		   
		 UserBean user = new UserBean();
		 user.setUserName(request.getParameter("un"));
		 user.setPassword(request.getParameter("pw"));
		 user = Login.login(user); 
		 
		 if (user.isValid()) 
		 { 
			 HttpSession session = request.getSession(true);
		 session.setAttribute("currentSessionUser",user);
		 response.sendRedirect("Search.jsp");
		 } 
		 else 
			 {
			 response.sendRedirect("Invalid.jsp"); //error page  
		 }

		
	}

}
