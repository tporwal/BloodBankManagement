package com.dto;

import java.io.Serializable;

public class Admin implements Serializable
{
    private String emailid;
    private String password;

    public Admin() {
    }

    public Admin(String emailid, String password) {
        this.emailid = emailid;
        this.password = password;
    }

    public String getEmailId() {
        return emailid;
    }

    public void setId(String emailid) {
        this.emailid = emailid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}