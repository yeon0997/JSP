<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	
	<%
		String subject = request.getParameter("subject");
		String uname = request.getParameter("uname");
		String contents = request.getParameter("contents");
		String phone = request.getParameter("phone");
		String city = request.getParameter("city");
		out.print("제목 : " + subject + "<br>");
		out.print("이름 : " + uname + "입니다.<br>");
		out.print("통신사 : " + phone + "<br>");
		out.print("지역 : " + city + "<br>");
		out.print("내용 : " + contents + "<br>");
		out.print("접속아이피" + request.getRemoteAddr());
	%>
</body>
</html>