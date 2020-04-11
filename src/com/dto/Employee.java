package com.dto;

public class Employee {
	private int empid;
	private String first_name;
	private String last_name;
	private String emailid;
	private String mobile_no;
	//private String alternatemobile_no;
	private String date_of_joining;
	private int salary;
	private String post;
	private String address;
	private int age;
	private String d_o_b;
	public Employee()
	{}
	public Employee(int empid, String first_name, String last_name, String emailid, String mobile_no, 
			String date_of_joining, int salary, String post, String address, int age, String d_o_b) {
		super();
		this.empid = empid;
		this.first_name = first_name;
		this.last_name = last_name;
		this.emailid = emailid;
		this.mobile_no = mobile_no;
		//this.alternatemobile_no = alternatemobile_no;
		this.date_of_joining = date_of_joining;
		this.salary = salary;
		this.post = post;
		this.address = address;
		this.age=age;
		this.d_o_b=d_o_b;
	}
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
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
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
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
	public String getDate_of_joining() {
		return date_of_joining;
	}
	public void setDate_of_joining(String date_of_joining) {
		this.date_of_joining = date_of_joining;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getD_o_b() {
		return d_o_b;
	}
	public void setD_o_b(String d_o_b) {
		this.d_o_b = d_o_b;
	}
}
