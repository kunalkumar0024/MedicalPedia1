package com.medicine;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.medicine.dao.medicalDao;

/**
 * Servlet implementation class removeProAction
 */
public class removeProAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int pid=Integer.parseInt(request.getParameter("pid"));
		
		try {
			Connection con=medicalDao.getCon();
			PreparedStatement st=con.prepareStatement("delete from products where pid=?");
			st.setInt(1, pid);
		          
		         int n= st.executeUpdate();
		         if(n>0) {
						response.getWriter().println("Successfully Remove");
					}
					
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("something went wrong, please try again.......");
			
			
		}
	}
		// TODO Auto-generated method stub
	}

