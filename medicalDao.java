package com.medicine.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.*;


public class medicalDao {
	
	
		

	public static Connection getCon() {
		// TODO Auto-generated method stub
		 String url=  "jdbc:mysql://localhost:3306/med_store";
	        String user="root";
	        String password="AD1999";
	try {
		 Class.forName("com.mysql.cj.jdbc.Driver");
       Connection con=DriverManager.getConnection(url,user,password);
		  return con;
	}
	catch (Exception e) {
		// TODO: handle exception
		
		System.out.print(e);
		return null;
	}
	}
	
	
}

	     