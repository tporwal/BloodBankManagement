package com.dbcon;

import java.sql.Connection;
import java.sql.DriverManager;

import com.dbcon.DatabaseDetails;

public class DatabaseConnection {
	public static Connection getConnection()
    {
        Connection con = null;
        
        try
        {
            Class.forName(DatabaseDetails.DRIVER);
            con = DriverManager.getConnection(DatabaseDetails.CONSTR,DatabaseDetails.USERID, DatabaseDetails.PASS);
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return con;
    }

}
