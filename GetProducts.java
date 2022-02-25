package com.medicine;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import com.medicine.dao.medicalDao;
import com.medicine.products.ProductDetail;
public class GetProducts {
	public List<ProductDetail> getDetails(){
		 Connection con=medicalDao.getCon();
		 ResultSet rs;
		 List<ProductDetail> list=new ArrayList<ProductDetail>();
			try {
				Statement st=con.createStatement();
				 rs=st.executeQuery("select * from products");		
				while(rs.next()) {
					ProductDetail pro=new ProductDetail();
					pro.setPid(rs.getInt("pid"));
					pro.setPimage(Base64.getEncoder().encodeToString(rs.getBytes("pimage")));
					pro.setPname(rs.getString("pname"));
					pro.setPprice(rs.getString("pprice"));
					list.add(pro);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return list;
	}

}
