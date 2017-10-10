package com.sp.model;

import java.sql.*;

public class UserBeanProcess {

	private Statement stat = null;
	
	private ResultSet rs = null;
	
	private Connection conn = null;
	
	// Release resources
	public void release() {
		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}
			
			if (stat != null) {
				stat.close();
				stat = null;
			}
			
			if (conn != null) {
				conn.close();
				conn = null;
			}
		}
		
		catch (Exception e){
			e.printStackTrace();
		}
	}
	
	public boolean checkUserValid(String username, String password) {
		
		boolean rvalue = false;
		
		try {
			// validate users in database
			conn = new ConnDB().getConn();
			
			// create statement
			Statement stat = conn.createStatement();
			
			// query
			ResultSet rs = stat.executeQuery("select PASSW from USER where USERNAME = '" + username + "'");
			
			// validate
			if (rs.next()) {
				
				// username exists
				if (rs.getString(1).equals(password)) {
					// valid password
					rvalue = true;
				}
				
			}
		}
		
		catch (Exception e) { 
			e.printStackTrace();
		}
		
		finally {
			this.release();
		}
		return rvalue;
	}
}
