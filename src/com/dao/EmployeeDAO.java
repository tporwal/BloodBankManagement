package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dbcon.DatabaseConnection;
import com.dto.Employee;

public class EmployeeDAO {
	Connection con;
    PreparedStatement pst;
    ResultSet rs;
	 public ArrayList<Employee> getAllEmployeeDetails() {
	        ArrayList<Employee> lst = null;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("select * from employee");

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                lst = new ArrayList<>();

	                while (rs.next()) {
	                    Employee obj = new Employee();
	                    obj.setEmpid(rs.getInt(1));
	                    obj.setFirst_name(rs.getString(2));
	                    obj.setLast_name(rs.getString(3));
	                    obj.setEmailid(rs.getString(4));
	                    obj.setMobile_no(rs.getString(5));
	                    //obj.setAlternatemobile_no(rs.getString(6));
	                    obj.setDate_of_joining(rs.getString(6));
	                    obj.setSalary(rs.getInt(7));
	                    obj.setPost(rs.getString(8));
	                    obj.setAddress(rs.getString(9));
	                    obj.setAge(rs.getInt(10));
	                    obj.setD_o_b(rs.getString(11));
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
