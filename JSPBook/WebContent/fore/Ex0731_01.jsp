<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>

<%	//스크립틀릿

	for(int i = 0; i < 5; i++)
		out.print("<h1>JSP</h1>"); //이렇게 하면 제어문으로 연속적인 출력가능
%>
	<h2>JSP Test2</h2>
	<h2>JSP Test2</h2>
	<h2>JSP Test2</h2>
	<h2>JSP Test2</h2>
	<h2>JSP Test2</h2>
<%
	out.println(myMethod(0));
	out.println("<h3>JSP</h3>");
%>

<%!
	public int myMethod(int count){
	return ++count;
}
%>

</body>
</html>