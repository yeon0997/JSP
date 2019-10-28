<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String number = request.getParameter("number");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String memo = request.getParameter("memo");

	
	PreparedStatement pstmt = null;
	
	//String sql = "SELECT * from contacts where cno = ?";
	String sql = "UPDATE contacts set name = ?, phone =? , memo = ? where cno = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, phone);
	pstmt.setString(3, memo);
	pstmt.setString(4, number);
	pstmt.executeUpdate();
	
	
	if(pstmt !=null)
		pstmt.close();
	if(conn != null)
		conn.close();
	
	response.sendRedirect("contacts.jsp");
 %>