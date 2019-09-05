<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "dbconn.jsp" %>
<%
	String filename = "";
	String realFolder = "C:/Users/moon/Desktop/java작업/javabasic/webMarket/WebContent/resources/images"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	//request내장 객체를  인스턴스에 설정
	
	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
	
	Integer price;

	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);

	long stock;

	if (unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
	
	Enumeration files = multi.getFileNames();
	String fname = (String)files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from product where p_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	rs = pstmt.executeQuery();

	
	while(rs.next()){
		if(fileName != null){
			sql = "update product set p_name=?,p_unitPrice=?,p_description=?,p_manufacturer=?,p_category=?,p_unitsInStock=?,p_condition=?,p_fileName=? where p_id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			pstmt.setString(3, description);
			pstmt.setString(4, manufacturer);
			pstmt.setString(5, category);
			pstmt.setLong(6, stock);
			pstmt.setString(7, condition);
			pstmt.setString(8, fileName);
			pstmt.setString(9, productId);
			pstmt.executeUpdate();
		} else{
			sql = "update product set p_name=?,p_unitPrice=?,p_description=?,p_manufacturer=?,p_category=?,p_unitsInStock=?,p_condition=? where p_id=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			pstmt.setString(3, description);
			pstmt.setString(4, manufacturer);
			pstmt.setString(5, category);
			pstmt.setLong(6, stock);
			pstmt.setString(7, condition);
			pstmt.setString(8, productId);
			pstmt.executeUpdate();
		}
		
	}
	
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
		
		response.sendRedirect("editProduct.jsp?edit=update");
		
	
%>