<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%! String greeting = "Welcome to Web Shopping Mall";
	String tagline = "Welcome to Web Market"; %>
	<h1> <%= greeting %> </h1>
	<h3> <%= tagline %> </h3>
	
	<h3><%= new java.util.Date() %></h3>
	<%
	java.util.Date mydate = new java.util.Date();
	out.print("<h4>" + mydate + "</h4>");
	%>
	<p>Today's date : <%= new java.util.Date() %></p>

</body>
</html>