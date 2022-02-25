package com.medicine;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.medicine.dao.medicalDao;

/**
 * Servlet implementation class AddProAction
 */
@MultipartConfig(maxFileSize = 16177216)
public class AddProAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pid=Integer.parseInt(request.getParameter("pid"));
		String pname= request.getParameter("pname");
		String pprice=request.getParameter("pprice");
	      Part part=request.getPart("pimage");
	      if (part !=null) {
			
		
	     
		try {
			 Connection con=medicalDao.getCon();
			PreparedStatement ps=con.prepareStatement("insert into products(pid,pname,pprice,pimage) values(?,?,?,?)");
			InputStream img=part.getInputStream();
			ps.setInt(1, pid);
			ps.setString(2, pname);
			ps.setString(3, pprice);
			ps.setBinaryStream(4, img);
			int n=ps.executeUpdate();
			if(n>0) {
				response.getWriter().println("Successfully Added");
			}
		
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Image E: "+e);
		}
		
	}
	}
		// TODO Auto-generated method stub
	}

