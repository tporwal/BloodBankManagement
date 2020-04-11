package com.dao;

import com.dbcon.DatabaseConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.UUID;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import com.dto.Donar;
import com.dto.BloodGroup;
import com.servercon.WebServer;

public class DonarDAO {
	 	Connection con;
	    PreparedStatement pst;
	    ResultSet rs;
	    String dob;
	    
	    public boolean checkDonarCredentials(Donar obj) {
	        boolean b = false;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("SELECT * FROM donar WHERE "
	                    + "emailid = ? and password = ? and verified = true and approved = true");

	            pst.setString(1, obj.getEmailid());
	            pst.setString(2, obj.getPassword());

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                b = true;
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return b;
	    }
	  	  
	    public boolean registerDonar(Donar obj) {
	        boolean b = false;

	        try {
		    	 
	            con = DatabaseConnection.getConnection();
	           
	            pst = con.prepareStatement("insert into donar values(?,?,?,?,?,?,?,?,?,?,?,?)");

	            pst.setString(1, obj.getEmailid());
	            pst.setString(2, obj.getPassword());
	            pst.setString(3, obj.getFirst_name());
	            pst.setString(4, obj.getLast_name());
	            pst.setString(5, obj.getMobile_no());
	            //pst.setString(6, obj.getAlternatemobile_no());
	            pst.setString(6, obj.getGender());	
	            pst.setInt(7, obj.getAge());
	            pst.setString(8, obj.getAddress());
	            pst.setString(9, obj.getBloodGroup());
	            pst.setString(10, obj.getD_o_b());
	            pst.setBoolean(11, false);
	            pst.setBoolean(12, false);

	            int count = pst.executeUpdate();

	            if (count > 0) {
	                String verification_link = WebServer.MYSERVER
	                        + "/verifydonar.jsp?donarid=" + obj.getEmailid();

	                boolean mailSent = MailDAO.sendMail(obj.getEmailid(),
	                        "Verification Mail From BloodBankManagement", "Please click on following link "
	                        + "to verify yourself with BloodBank <a href=" + verification_link
	                        + ">VERIFY</a>");

	                if (mailSent) {
	                    System.out.println("verification mail has been "
	                            + "sent to " + obj.getEmailid());
	                    b = true;
	                } else {
	                    System.out.println("verification mail has not been "
	                            + "sent to " + obj.getEmailid());
	                }
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return b;
	    }

	    public boolean verifyDonar(String donarid) {
	        boolean b = false;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("select * from donar Where emailid = ? AND "
	                    + "verified = false");

	            pst.setString(1, donarid);

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                pst = con.prepareStatement("Update donar set verified = true Where emailid = ?");

	                pst.setString(1, donarid);

	                int count = pst.executeUpdate();

	                if (count > 0) {
	                    b = true;
	                }
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return b;
	    }

	    public boolean deleteDonar(String donarid) {
	        boolean b = false;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("delete from donar where emailid = ?");

	            pst.setString(1, donarid);

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

	    public ArrayList<Donar> getAllDonar() {
	        ArrayList<Donar> lst = null;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("select * from donar where verified = true");

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                lst = new ArrayList<>();

	                while (rs.next()) {
	                    Donar obj = new Donar();
	                    obj.setEmailid(rs.getString(1));
	                    obj.setPassword(rs.getString(2));
	                    obj.setFirst_name(rs.getString(3));
	                    obj.setLast_name(rs.getString(4));
	                    obj.setMobile_no(rs.getString(5));
	                    //obj.setAlternatemobile_no(rs.getString(6));
	                    obj.setGender(rs.getString(6));
	                    obj.setAge(rs.getInt(7));
	                    obj.setAddress(rs.getString(8));
	                    obj.setBloodGroup(rs.getString(9));
	                    obj.setD_o_b(rs.getString(10));
	                    obj.setVerified(rs.getBoolean(11));
	                    obj.setApproved(rs.getBoolean(12));

	                    lst.add(obj);
	                }
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return lst;
	    }

	   
	    public boolean approveDonar(String donarid) {
	        boolean b = false;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("Update donar set approved = true where emailid = ?");

	            pst.setString(1, donarid);

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

	    public boolean rejectDonar(String donarid) {
	        boolean b = false;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("Delete From donar where emailid = ?");

	            pst.setString(1, donarid);

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
	    
	    
	    
	    public Donar getDonarDetails(String donarid)
	    {
	            Donar  d =null;
	            
	       try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("select emailid from donar where is =?");
	            pst.setString(1, donarid);
	            rs = pst.executeQuery();
	            
	            if(rs.isBeforeFirst())
	            {
	                rs.next();
	                d.setEmailid(rs.getString(1));
	                d.setPassword(rs.getString(2));
	                d.setFirst_name(rs.getString(3));
	                d.setLast_name(rs.getString(4));
	                d.setMobile_no(rs.getString(5));
	               // d.setAlternatemobile_no(rs.getString(6));
	                d.setGender(rs.getString(6));
	                d.setAge(rs.getInt(7));
	                d.setAddress(rs.getString(8));
	                d.setBloodGroup(rs.getString(9));
	                d.setD_o_b(rs.getString(10));
	                d.setVerified(rs.getBoolean(11));
	                d.setApproved(rs.getBoolean(12));
	            }
	            con.close();
	        }
	        catch(Exception ex)
	        {
	            ex.printStackTrace();
	        }
	       
	       return d;
	    }
	   /* public Boolean getBloodGroup(String donarid)
	    {
	        boolean b=false;

	        try 
	        {
	            con = DatabaseConnection.getConnection();
	            pst = con.prepareStatement("select * from donar where emailid=?");
	            pst.setString(1, donarid);
	            rs = pst.executeQuery();
	            Donar obj=new Donar();
	            String d=obj.getBloodGroup();
	            BloodGroup bg= new BloodGroup();
	            pst = con.prepareStatement("Update bloodgroup set unit_stock=? where blood_group=?");
	            pst.setInt(1,bg.getUnitCount()+1 );
	            pst.setString(2, d);
		        con.close();
	        }
	        catch (Exception ex) 
	        {
				ex.printStackTrace();
			}
	        return b;
	    }*/
}