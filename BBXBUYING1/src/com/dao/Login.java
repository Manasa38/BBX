package com.dao;
import java.sql.*;


import com.training.bean.UserBean;

public class Login {

	 static Connection currentCon = null;
	 static PreparedStatement preparedStatement = null;
	 static ResultSet rs = null; 
	 public static String QUERY = "select * from login where userName = ? and aes_decrypt(password, '"+ "mykey"+"') = ?";

	 public static UserBean login(UserBean bean) { 
		 //preparing some objects for connection 
		// Statement stmt = null;
		 String username = bean.getUserName();
		 String password = bean.getPassword(); 

		 System.out.println("Your user name is " + username); 
		 
		 System.out.println("Your password is " + password);
		 System.out.println("Query: "+ QUERY);
		 currentCon = Connect.getConnection();

		 try {
			preparedStatement = currentCon.prepareStatement(QUERY);
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);

			// stmt=currentCon.createStatement(); 
			 rs = preparedStatement.executeQuery(QUERY); 
			 while(rs.next()){
			 
				 rs.getString(username);
				 rs.getString(password);
				 System.out.println("username : " + username);
					System.out.println("password : " + password);

			 bean.setValid(true);
			 } 
	
		 }catch (Exception ex) { 
			 System.out.println("Log In failed: An Exception has occurred! " + ex); 
			
		} finally { 
			 if (rs != null) 
			 { try {
				 rs.close(); 
			 } catch (Exception e) {
				 
			 } rs = null; 
			 } if (preparedStatement != null)
			 { try {
				 preparedStatement.close(); 
				 } catch (Exception e) {} 
			 preparedStatement = null; } if (currentCon != null)
			 { try { currentCon.close();
			 } catch (Exception e) { 
				 
			 } currentCon = null; 
			 } 
			 }
		 return bean;
	 }

}
