package com.training.bean;

public class UserBean {
	String userName;

	String password;
	 public boolean valid;
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean newValid) {
		valid = newValid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String newuserName) {
		userName = newuserName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String newpassword) {
		password = newpassword;
	}
}
