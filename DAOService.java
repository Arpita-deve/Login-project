package com.demoproject.model;

import java.sql.ResultSet;

public interface DAOService {
	//DAO=data access object
	
	public void connectDB();
	public boolean verifyLogin(String email,String password);
	public void addRegistration(String name,String email,String mobile);
	public void deleteRegistration(String email);
	public void updateRegistration(String email,String mobile);
	public ResultSet getAllRegistration();

}
