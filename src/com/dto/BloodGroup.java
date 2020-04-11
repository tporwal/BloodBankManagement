package com.dto;

import java.io.Serializable;

public class BloodGroup implements Serializable
{
	private int bid;
	private String bloodGroup;
	private int unitCount;
	public BloodGroup()
	{}
	public BloodGroup(int bid, String bloodGroup, int unitCount) 
	{
		this.bid = bid;
		this.bloodGroup = bloodGroup;
		this.unitCount = unitCount;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public int getUnitCount() {
		return unitCount;
	}
	public void setUnitCount(int unitCount) {
		this.unitCount = unitCount;
	}
	

}
