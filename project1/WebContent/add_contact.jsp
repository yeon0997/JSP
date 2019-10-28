<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String memo = request.getParameter("memo");

	
	PreparedStatement pstmt = null;
	
	String sql = "insert into contacts(name, phone, memo) values(?, ?, ?)";
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, name);
	pstmt.setString(2, phone);
	pstmt.setString(3, memo);
	pstmt.executeUpdate();

	if(pstmt !=null)
		pstmt.close();
	if(conn != null)
		conn.close();
	
	response.sendRedirect("contacts.jsp");
%>