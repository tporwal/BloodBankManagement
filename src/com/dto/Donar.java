package com.dto;
import java.io.Serializable;

public class Donar implements Serializable
{
    private String password;
    private String first_name;
    private String last_name;
    private String mobile_no;
    //private String alternatemobile_no;
    private String emailid;
    private String gender;
    private int age;
    private String address;
    private String bloodGroup;
    private String d_o_b;
    private boolean verified;
    private boolean approved;
    public Donar() {
    }
	public Donar(String password, String first_name, String last_name, String mobile_no, String emailid, String gender, int age,
			String address, String bloodGroup, String d_o_b, boolean verified, boolean approved) 
	{
		this.password = password;
		this.first_name = first_name;
		this.last_name = last_name;
		this.mobile_no = mobile_no;
		//this.alternatemobile_no = alternatemobile_no;
		this.emailid = emailid;
		this.gender = gender;
		this.age = age;
		this.address = address;
		this.bloodGroup = bloodGroup;
		this.d_o_b = d_o_b;
		this.verified = verified;
		this.approved = approved;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	/*public String getAlternatemobile_no() {
		return alternatemobile_no;
	}
	public void setAlternatemobile_no(String alternatemobile_no) {
		this.alternatemobile_no = alternatemobile_no;
	}*/
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public String getD_o_b() {
		return d_o_b;
	}
	public void setD_o_b(String d_o_b) {
		this.d_o_b = d_o_b;
	}
	public boolean isVerified() {
		return verified;
	}
	public void setVerified(boolean verified) {
		this.verified = verified;
	}
	public boolean isApproved() {
		return approved;
	}
	public void setApproved(boolean approved) {
		this.approved = approved;
	}
	/*private static java.sql.Date getDob() {
	    java.util.Date dob = new java.util.Date();
	    return new java.sql.Date(dob.get);
	}*/


}
