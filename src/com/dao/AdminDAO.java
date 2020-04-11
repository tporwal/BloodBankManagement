package com.dao;

import com.dbcon.DatabaseConnection;
import java.sql.*;
import java.util.UUID;

import com.dto.Admin;

public class AdminDAO {

Connection con ;
PreparedStatement pst;
ResultSet rs;

    public boolean checkUser(Admin obj)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("SELECT * FROM organization WHERE emailid = ? and password = ?");
            
            pst.setString(1, obj.getEmailId());
            pst.setString(2, obj.getPassword());
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
                b = true;
            
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return b;
    }
    
    
    public boolean changePassword(String emailid,String oldPassword ,String newPassword)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("SELECT emailid, password FROM organization WHERE "
                    + "emailid = ? and password = ?");
            
            pst.setString(1, emailid);
            pst.setString(2, oldPassword);
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                pst = con.prepareStatement("UPDATE organization SET password = ?"
                        + " WHERE emailid = ?");
                pst.setString(1, newPassword);
                pst.setString(2, emailid);
                
                int count = pst.executeUpdate();
                
                if(count > 0)
                    b = true;
            }
            
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return b;
    }
    
    public String getAdminID()
    {
            String id = "";
            
       try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("select emailid from organization");
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                rs.next();
                id = rs.getString("emailid");
            }
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
       
       return id;
    }
    
    
     public String getAdminPass()
    {
            String pass = "";
            
       try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("select password from organization");
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                rs.next();
                pass = rs.getString("pass");
            }
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
       
       return pass;
    }
}
