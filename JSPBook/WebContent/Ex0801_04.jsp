<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//response.sendRedirect("./Ex0801_05.jsp");
	%>
	<script>
		alert("다른 페이지로 이동합니다."); //메시지상자
		location.href = './Ex0801_05.jsp'; //redirect랑 같음
	</script>
</body>
</html>