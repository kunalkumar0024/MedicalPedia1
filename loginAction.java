package com.medicine;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import com.medicine.dao.medicalDao;
import com.medicine.products.ProductDetail;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginAction")
public class loginAction extends HttpServlet{
	 
		protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
			
			String uemail =request.getParameter("uemail");
			String upassword =request.getParameter("upassword");
			if(uemail.equals("admin@gmail.com") && upassword.equals("admin"))
			{
				 HttpSession session=request.getSession();
					session.setAttribute("uemail", uemail);
					response.sendRedirect("admin.jsp");
					
			}
			else {
				int z=0;
				
			try {
				Connection con=medicalDao.getCon();
			
				Statement st=con.createStatement();
				ResultSet rs =st.executeQuery("select *from musers where uemail='"+uemail+"' and upassword='"+upassword+"'");
				  
			          while(rs.next()) {
			        	  z=1;
			        	  HttpSession session=request.getSession();
							session.setAttribute("uemail", uemail);
							response.sendRedirect("HomePage.jsp");
							 GetProducts get=new GetProducts();
					         List<ProductDetail> list=get.getDetails();
					         session.setAttribute("list", list);
			        	  
			          }
			          if(z==0)
			        	  response.sendRedirect("login.jsp");
		        	  
				 
			} catch (Exception e) {
				// TODO: handle exception
				System.out.print(e);
				response.sendRedirect("login.jsp");
				
			}
			}
}
		}