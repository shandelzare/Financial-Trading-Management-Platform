package com.sp.model;

import java.sql.*;

public class ConnDB {
	
	private Connection conn = null;
	
	public Connection getConn() {
		
		try {
			
			// load driver
			Class.forName("com.mysql.jdbc.Driver");
			
			// get connection
			String jdbc_url = "jdbc:mysql://sql.njit.edu:3306/bw243?useSSL=false";
			String username = "bw243";
			String password = "1eA4gBfKD";
			
			conn = DriverManager.getConnection(jdbc_url, username, password);
			
		}
		
		catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return conn;
		
	}
	
}
