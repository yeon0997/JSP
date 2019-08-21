<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
@import
	url('https://fonts.googleapis.com/css?family=Source+Code+Pro&display=swap')
	;

h1, h3 {
	font-family: 'Source Code Pro', monospace;
}
</style>
</head>
<body>
	<%!String greeting = "Welcome to Web Shopping Mall";
	String tagline = "Welcome to Web Market";%>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href=".welcom.jsp">home</a>
			</div>
		</div>
	</nav>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%></h1>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%></h3>
		</div>
		<hr>
	</div>
	<footer class="container">
		<p>&copy; WebMarket</p>
	</footer>
</body>
</html>