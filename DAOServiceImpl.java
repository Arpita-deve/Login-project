package com.demoproject.model;

import java.sql.*;


public class DAOServiceImpl implements DAOService {
	private Connection con;
	private Statement stmnt;
	//private String password;
	@Override
	public void connectDB() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/junedb","root","test");
			stmnt=con.createStatement();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void addRegistration(String name, String email, String mobile) {
		try {
		stmnt.executeUpdate
		("insert into registration values('"+name+"','"+email+"','"+mobile+"')");
		}catch(Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void deleteRegistration(String email) {
		try {
			stmnt.executeUpdate("Delete from registration where email='"+email+"'");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateRegistration(String email, String mobile) {
		try {
			stmnt.executeUpdate("update registration set mobile='"+mobile+"' where email='"+email+"'");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}



	@Override
	public ResultSet getAllRegistration() {
		try {
		ResultSet result = stmnt.executeQuery("select * from Registration");
		return result;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean verifyLogin(String email, String password) {
		try {
			ResultSet res=stmnt.executeQuery("select * from login where email='"+email+"' and password='"+password+"'");
			return res.next();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public void setAttribute(String string, String email) {
		// TODO Auto-generated method stub
		
	}

}
