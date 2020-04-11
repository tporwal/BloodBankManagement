package com.dto;


public class Acceptor {
	private int id;
	private String first_name;
	private String last_name;
	private int age;
    private String gender;
    private String mobile_no;
    //private String alternatemobile_no;
    private String address;
    private String referred_by;
    private String blood_group;
    private String emailid;
    private String d_o_b;
    private int unit_required;
    public Acceptor() {}
	public Acceptor(int id,String first_name, String last_name, int age, String gender, String mobile_no,
			String address, String referred_by, String blood_group, String emailid, String d_o_b, int unit_required) 
	{
		this.id=id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.age = age;
		this.gender = gender;
		this.mobile_no = mobile_no;
		//this.alternatemobile_no = alternatemobile_no;
		this.address = address;
		this.referred_by = referred_by;
		this.blood_group = blood_group;
		this.emailid = emailid;
		this.d_o_b = d_o_b;
		this.unit_required=unit_required;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getReferred_by() {
		return referred_by;
	}
	public void setReferred_by(String referred_by) {
		this.referred_by = referred_by;
	}
	public String getBlood_group() {
		return blood_group;
	}
	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getD_o_b() {
		return d_o_b;
	}
	public void setD_o_b(String d_o_b) {
		this.d_o_b = d_o_b;
	}
	public int getUnit_required() {
		return unit_required;
	}
	public void setUnit_required(int unit_required) {
		this.unit_required = unit_required;
	}
}
