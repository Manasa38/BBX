package com.training.controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.*;
import com.model.*;
import com.training.bean.Bike;

/**
 * Servlet implementation class VehicleController
 */
@WebServlet("/BikeController")
public class BikeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		try {
			List<Bike> vlist=new BikeDao().getAllBike();
			// write
			HttpSession session=request.getSession();
			session.setAttribute("mylist", vlist);
			request.getRequestDispatcher("Bike.jsp").forward(request, response);
  		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  	}

}
