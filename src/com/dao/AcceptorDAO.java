package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dbcon.DatabaseConnection;
import com.dto.Acceptor;
import com.dto.Employee;

public class AcceptorDAO {
	Connection con;
    PreparedStatement pst;
    ResultSet rs;
	 public void registerAcceptor(Acceptor obj) {
	        
	        try {
		    	 
	            con = DatabaseConnection.getConnection();
	           
	            pst = con.prepareStatement("insert into acceptor values(?,?,?,?,?,?,?,?,?,?,?,?)");
	            pst.setInt(1, obj.getId());
	            pst.setString(2, obj.getFirst_name());
	            pst.setString(3, obj.getLast_name());
	            pst.setInt(4, obj.getAge());
	            pst.setString(5, obj.getGender());
	            pst.setString(6, obj.getMobile_no());
	            //pst.setString(7, obj.getAlternatemobile_no());
	            pst.setString(7, obj.getAddress());
	            pst.setString(8, obj.getReferred_by());
	            pst.setString(9, obj.getBlood_group());
	            pst.setString(10, obj.getD_o_b());
	            pst.setString(11, obj.getEmailid());	
	            pst.setInt(12, obj.getUnit_required());	
	            int count = pst.executeUpdate();
	            if(count>0)
	            	System.out.println("Form Filled Successfully.");
	            else
	            	System.out.println("Form Not Filled Successfully.");

         con.close();
     } catch (Exception ex) {
         ex.printStackTrace();
     }

 }
	 public ArrayList<Acceptor> getAllAcceptorDetails() {
	        ArrayList<Acceptor> lst = null;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("select * from acceptor");

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                lst = new ArrayList<>();

	                while (rs.next()) {
	                    Acceptor obj = new Acceptor();
	                    obj.setId(rs.getInt(1));
	                    obj.setFirst_name(rs.getString(2));
	                    obj.setLast_name(rs.getString(3));
	                    obj.setAge(rs.getInt(4));
	                    obj.setGender(rs.getString(5));
	                    obj.setMobile_no(rs.getString(6));
	                    //obj.setAlternatemobile_no(rs.getString(7));
	                    obj.setAddress(rs.getString(7));
	                    obj.setReferred_by(rs.getString(8));
	                    obj.setBlood_group(rs.getString(9));
	                    obj.setD_o_b(rs.getString(10));
	                    obj.setEmailid(rs.getString(11));
	                    obj.setUnit_required(rs.getInt(12));
	                    lst.add(obj);
	                }
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return lst;
	    }


}
