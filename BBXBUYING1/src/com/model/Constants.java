package com.model;

public class Constants {
	 public static final String ENCRYPTKEY = "mykey";
	 public static final String QUERY = "select * from login where userName = ? and aes_decrypt(password,'"+ "mykey"+"') =?";

}
