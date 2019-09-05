<%@page import="java.io.Writer"%>
<%-- <%@page import="com.sun.org.apache.bcel.internal.generic.CPInstruction"%> --%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<title>주문 완료</title>
</head>
<body>

	<%
		
	String shipping_cartId =""; 
	String shipping_name =""; 
	String shipping_shippingDate =""; 
	String shipping_country =""; 
	String shipping_zipCode =""; 
	String shipping_addressName ="";
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			Cookie thisCookies = cookies[i];
			String n = thisCookies.getName();
			if(n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode(thisCookies.getValue(),"utf-8");
			if(n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode(thisCookies.getValue(),"utf-8");
		}
	}
	%>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 완료</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-danger">주문해주셔서 감사합니다.</h2>
		<p>주문은	<%	out.println(shipping_shippingDate);	%>에 배송될 예정입니다! !	
		<p>주문번호 :	<%	out.println(shipping_cartId);	%>
	</div>
	<div class="container">
		<p><a href="./products.jsp" class="btn btn-secondary"> &laquo; 상품 목록</a>
	</div>

</body>
</html>

<%

	session.invalidate();

	for(int i=0; i<cookies.length; i++){
	 	Cookie thisCookies = cookies[i];
		String n = thisCookies.getName(); 
		if(n.equals("Customer_Id"))
			thisCookies.setMaxAge(0);
		if(n.equals("Customer_name"))
			thisCookies.setMaxAge(0);
		if(n.equals("Customer_phoneNumber"))
			thisCookies.setMaxAge(0);
		if(n.equals("Customer_country"))
			thisCookies.setMaxAge(0);
		if(n.equals("Customer_zipCode"))
			thisCookies.setMaxAge(0);
		if(n.equals("Customer_addressName"))
			thisCookies.setMaxAge(0);
	
		if(n.equals("Shipping_cartId"))
			thisCookies.setMaxAge(0);	
		if(n.equals("Shipping_name"))
			thisCookies.setMaxAge(0);	
		if(n.equals("Shipping_shippingDate"))
			thisCookies.setMaxAge(0);	
		if(n.equals("Shipping_country"))
			thisCookies.setMaxAge(0);	
		if(n.equals("Shipping_zipCode"))
			thisCookies.setMaxAge(0);	
		if(n.equals("Shipping_addressName"))
			thisCookies.setMaxAge(0);	
		
		response.addCookie(thisCookies);
}

%>