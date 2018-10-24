package com.dao;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.SQLException;


public class Connect {
	public static Connection getConnection() {
		// TODO Auto-generated method stub
		Connection con = null;

		 try { 
		 // assuming "DataSource" is your DataSource name 
			Class.forName("com.mysql.jdbc.Driver");
		 try { 
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bbx","root","root");
		 // assuming your SQL Server's username is "username" 
		 // and password is "password" }
		 }
		 catch (SQLException ex) { 
			 ex.printStackTrace(); 
			 }
		 }
	    catch(ClassNotFoundException e) { 
			System.out.println(e);
		}
	
		return con;
	}

	public static Connection getMySqlConnect() {
		
		// TODO Auto-generated method stub
		return null;
	}
}

