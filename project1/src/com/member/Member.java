package com.member;

public class Member {
	
	   private int mno;
	   private String id;
	   private   String pw;
	   
	   public Member(int mno, String id, String pw) {
		super();
		this.mno = mno;
		this.id = id;
		this.pw = pw;
	   }
	   
	   public int getMno() {
	      return mno;
	   }
	   public void setMno(int mno) {
	      this.mno = mno;
	   }
	   public String getId() {
	      return id;
	   }
	   public void setId(String id) {
	      this.id = id;
	   }
	   public String getPw() {
	      return pw;
	   }
	   public void setPw(String pw) {
	      this.pw = pw;
	   }

	}

