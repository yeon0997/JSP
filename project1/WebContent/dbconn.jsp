<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	Connection conn = null;

	try{
		String url = "jdbc:mysql://localhost:3306/secretary?useSSL=false";
		String user = "root";
		String password = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
	}	catch (SQLException e){
		out.println("데이터베이스 연결이 실패 했습니다.<br>");
		out.println("SQLException : " + e.getMessage());
	}
	
%>