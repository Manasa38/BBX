package com.dao;
 
import java.sql.Connection;
import com.model.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.training.bean.RegisterBean;
import util.DBconnection;
 
public class RegisterDao {
 

public String registerUser(RegisterBean registerBean)
 {

 String userName = registerBean.getUserName();

 String password = registerBean.getPassword();
 
 Connection con = null;
 PreparedStatement preparedStatement = null;
 
 
 try
 {
 con = DBconnection.createConnection();
 String query = "insert into login(userName,password) values (?,aes_encrypt(?,'"+"mykey"+"'))"; //Insert user details into the table 'USERS'
 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
 
 preparedStatement.setString(1, userName);
 
 preparedStatement.setString(2, password);
 
 int i= preparedStatement.executeUpdate();
 
 if (i!=0)  //Just to ensure data has been inserted into the database
	 System.out.println("inserted");
 return "SUCCESS";
 }
 catch(SQLException e)
 {
 e.printStackTrace();
 }
 return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
 }
}