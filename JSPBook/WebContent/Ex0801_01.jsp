<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%-- <%@ page import = "java.sql.*" %>// db접속 import
    import는 선언하고 안써도 됨. 하지만 없으면 사용못함 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--@ include file="./menu.jsp" --%>
	<jsp:include page = "./footer.jsp" flush = "false" /><%--헤더정보를 나가게 하지않는 옵션 flush --%>
	<%=new Date()%><br>
	<%
		Date date = new Date();
		out.print(date + "<br>");
		out.print(date + "<br>");
		out.print(date + "<br>");

		int hour = date.getHours();
		int min = date.getMinutes();
		int sec = date.getSeconds();
		out.print(hour + "<br>");
	%>
	<%
		Calendar cal = Calendar.getInstance();
		int yy = cal.get(Calendar.YEAR);
		int mm = cal.get(Calendar.MONTH);
		int dd = cal.get(Calendar.DAY_OF_MONTH);
		int hh = cal.get(Calendar.HOUR_OF_DAY);
		int ms = cal.get(Calendar.MINUTE);
		int ss = cal.get(Calendar.SECOND);
		String date2 = yy + "-" + mm + "-" + dd + " "  + hh + "-" + ms + "-" + ss;
		out.print(date2 + "<br>");
		String date3 = String.format("%02d-%02d-%02d %02d:%02d:%02d", yy, mm, dd, hh, ms, ss);
		out.print(date3 + "<br>");
	%>
	<%--@ include file = "./footer.jsp" --%>
	<jsp:include page = "./footer.jsp" flush = "false" />
</body>
</html>