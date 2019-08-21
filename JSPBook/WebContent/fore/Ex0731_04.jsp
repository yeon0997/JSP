<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
//		int count = 0;	//전역변수로 선언 like static 새로 고침할 때마다 ++됨
	%>
	<%
//		out.print(++count);
	%>
	<%
		for(int i = 0; i <= 10; i++){
			if (i % 2 == 0)
				out.println(i + "<br>");
		}
	%>
</body>
</html>