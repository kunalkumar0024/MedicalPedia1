package com.medicine;



import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import com.medicine.dao.medicalDao;
import com.medicine.products.ProductDetail;

import jakarta.servlet.ServletRequest;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/registerAction")
public class registerAction extends HttpServlet {
protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
	
	
	String uname =request.getParameter("uname");
	String uage =request.getParameter("uage");
	String udob =request.getParameter("udob");
	String uemail =request.getParameter("uemail");
	String upassword =request.getParameter("upassword");
	
	try {
		Connection con=medicalDao.getCon();
		PreparedStatement st=con.prepareStatement("insert into musers values(?,?,?,?,?)");
		  st.setString(1, uname);
	          st.setString(2, uage);
	          st.setString(3, udob);
	          
	          st.setString(4, uemail);
	          st.setString(5, upassword);
	          
	          st.executeUpdate();
	          response.sendRedirect("HomePage.jsp");
	          HttpSession session=request.getSession();
				session.setAttribute("uemail", uemail);
				 GetProducts get=new GetProducts();
		         List<ProductDetail> list=get.getDetails();
		         session.setAttribute("list", list);
				
		
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println(e);
		response.sendRedirect("HomePage.jsp");
		
	}
}
}

