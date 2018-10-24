package com.model;



import java.sql.*;

public class Validate
 {
     public static boolean checkUser(String email,String pass)
     {
      boolean st =false;
      try{

     //loading drivers for mysql
         Class.forName("com.mysql.jdbc.Driver");

      //creating connection with the database
         Connection con=DriverManager.getConnection
                        ("jdbc:mysql://localhost:3306/bbx","root","root");
         PreparedStatement ps =con.prepareStatement
                             ("select * from login where userName =? and password=?");
         ps.setString(2, email);
         ps.setString(3, pass);
         ResultSet rs =ps.executeQuery();
         st = rs.next();
       
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                
  } 
 }