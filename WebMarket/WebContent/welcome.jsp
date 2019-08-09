<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>홈</title>
</head>
<body>
	<%@ include file = "menu.jsp" %>
	<%! String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
		String tagline = "WELCOME TO WEB MARKET";
	%>
	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">
				<%= greeting %>
			</h1>
		</div>
	</div>
	

	<div class = "container">
		<div class = "text-center">
			<h3><%= tagline %></h3>
			<!-- 접속시간 -->
			<%
				response.setIntHeader("Refresh", 5);
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0){
					am_pm = "AM";
				} else{
					am_pm = "pm";
					hour = hour - 12;
				}
				String CT = hour + " : " + minute + " : " + second + " " + am_pm;
				out.println("현재 접속시각 : " + CT + "\n");
				
				response.setIntHeader("refresh", 1);
			%>
		</div>
	</div>
	
	<!-- footer가 위치하는 부분 -->
	<%@ include file = "footer.jsp" %>
</body>
</html>