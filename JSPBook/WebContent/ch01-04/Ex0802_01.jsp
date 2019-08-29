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
		String aaa = "";
		int bbb = 25;
		int ccc = 500;
		String ddd = "홍길동";
		//위 변수들을 사용하여 다음과 같은 문자열을 만들고 aaa에 저장
		//홍길동의 나이는 25세이고 주소는 500번지 입니다
		
		aaa = "'" + ddd + "'" + "의 나이는 '" + bbb + "'세이고 주소는" + "'" + ccc + "'" + "번지 입니다.";
		out.print(aaa + "<br>");
	%>

</body>
</html>