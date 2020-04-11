package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dbcon.DatabaseConnection;
import com.dto.BloodGroup;
import com.dto.Acceptor;

public class BloodGroupDAO {
	Connection con;
    PreparedStatement pst;
    ResultSet rs;

	 public boolean updateStock(int bid) {
	        boolean b = false;
	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("Update bloodgroup set unit_count = unit_count+1 where bid=?");
	            pst.setInt(1, bid);
	            int count = pst.executeUpdate();

	            if (count > 0) {
	                b = true;
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	        return b;
	 }
	 public ArrayList<BloodGroup> getAllStock() {
	        ArrayList<BloodGroup> lst = null;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("select * from bloodgroup");

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                lst = new ArrayList<>();

	                while (rs.next()) {
	                    BloodGroup obj = new BloodGroup();
	                    obj.setBid(rs.getInt(1));
	                    obj.setBloodGroup(rs.getString(2));
	                    obj.setUnitCount(rs.getInt(3));
	                    lst.add(obj);
	                }
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return lst;
	    }
	 public boolean updateStockFromAcceptor(String bloodgrp, int unit) {
	        boolean b = false;
	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("Update bloodgroup set unit_count = unit_count - ? where blood_group=?");
	            pst.setInt(1, unit);
	            pst.setString(2, bloodgrp);
	            int count = pst.executeUpdate();

	            if (count > 0) {
	                b = true;
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	        return b;
	 }
}
