<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");
	String number = request.getParameter("number");
	
	PreparedStatement pstmt = null;
	
	String sql = "DELETE FROM contacts where cno = ?";
	pstmt = conn.prepareStatement(sql);

	pstmt.setString(1, number);
	pstmt.executeUpdate();
	
	if(pstmt !=null)
		pstmt.close();
	if(conn != null)
		conn.close();
	
	response.sendRedirect("contacts.jsp");

%>