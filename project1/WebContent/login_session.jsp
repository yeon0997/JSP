<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>
<%@ page import="java.sql.*"%>

<% 
	request.setCharacterEncoding("UTF-8");
	
	String ide = request.getParameter("id");
	String pwd = request.getParameter("pw");
	
	PreparedStatement pstmt = null;
	ResultSet rs;
	String sql = "select * from members where id = ? and pw = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, ide);
	pstmt.setString(2, pwd);
	rs = pstmt.executeQuery();
	
	
	if(rs.next()){
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
		
		response.sendRedirect("contacts.jsp");
		
	} else {
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
		
		response.sendRedirect("login_fail.jsp");
	}
%>