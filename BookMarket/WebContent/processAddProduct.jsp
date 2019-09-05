<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.*"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@page import="com.oreilly.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file = "dbconn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "D:/GitHub/BookMarket/WebContent/resources/images/"; //웹 어플리케이션상의 절대 경로
	String encType = "UTF-8"; //인코딩 타입
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
	
	String sql = "insert into books values (?,?,?,?,?,?,?,?,?)";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	pstmt.setString(2, name);
	pstmt.setInt(3, price);
	pstmt.setString(4, description);
	pstmt.setString(5, category);
	pstmt.setString(6, manufacturer);
	pstmt.setLong(7, stock);
	pstmt.setString(8, condition);
	pstmt.setString(9, fileName);
	pstmt.executeUpdate();
	
	if(pstmt != null) pstmt.close();
	if(conn != null) conn.close();
	
	
/* 	ProductRepository dao = ProductRepository.getInstance();//상품을 추가할수 있는 인스턴스를 실행하는 객체 메소드

	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setFilename(fileName);

	dao.addProduct(newProduct); */

	response.sendRedirect("products.jsp");//위 화면은 안보임 - 바로 리다이렉트 시킴
%>
