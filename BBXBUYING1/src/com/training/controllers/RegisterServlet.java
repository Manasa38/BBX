package com.training.controllers;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.training.bean.RegisterBean;
import com.dao.RegisterDao;
 
public class RegisterServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
 
 public RegisterServlet() {
 }
 
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//Copying all the input parameters in to local variables
 
 String userName = request.getParameter("userName");
 String password = request.getParameter("password");
 
 RegisterBean registerBean = new RegisterBean();
//Using Java Beans - An easiest way to play with group of related data

 registerBean.setUserName(userName);
 registerBean.setPassword(password);
 

 RegisterDao registerDao = new RegisterDao();
  
//The core Logic of the Registration application is present here. We are going to insert user data in to the database.
 String userRegistered = registerDao.registerUser(registerBean);
  
    //On success, you can display a message to user on Home page
 if (userRegistered.equals("SUCCESS")){
 request.getRequestDispatcher("Login.jsp").forward(request, response);
 }
 else   //On Failure, display a meaningful message to the User.
 {
 request.setAttribute("errorMessage", userRegistered);
 request.getRequestDispatcher("Register.jsp").forward(request, response);
 }
 }
 
}