<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "dbconn.jsp" %>

<%

	String productId = request.getParameter("id");

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from books";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	if(rs.next()){
		sql = "delete from books where b_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,productId);
		pstmt.executeUpdate();
	}else {
		out.println("일치하는 상품이 없습니다.");
	}
	
	if(rs != null) rs.close();
	if(pstmt != null) pstmt.close();
	if(conn != null) conn.close();
	
	response.sendRedirect("editProduct.jsp?edit=delete");
	
%>