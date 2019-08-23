<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>아이디 : <%=request.getParameter("id") %>
	<p>비밀번호 : <%=request.getParameter("passwd") %>
	<p>이름 : <%=request.getParameter("neme") %>
	<p>휴대전화 : <%=request.getParameter("phone1") %> - <%=request.getParameter("phone2") %> - <%=request.getParameter("phone3") %>
	<p>주소 : <%=request.getParameter("addr1") %> / <%=request.getParameter("addr2") %> / <%=request.getParameter("addr3") %>
	<p>생년월일 : <%=request.getParameter("year") %> / <%=request.getParameter("month") %> / <%=request.getParameter("day") %>
</body>
</html>