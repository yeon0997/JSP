package com.contact;

public class Contact {

	private int cno;
	private String name;
	private String phone;
	private String memo;
	
	public Contact(int cno, String name, String phone, String memo) {
		super();
		this.cno = cno;
		this.name = name;
		this.phone = phone;
		this.memo = memo;
	}
	
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	
}
