<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
   <% request.setCharacterEncoding("UTF-8");%>
   <h3> 가 입 정 보 </h3>
   
   <%
      String pid = request.getParameter("id");
      String pwd = request.getParameter("passwd");
      String pname = request.getParameter("name");
      String pbirth = request.getParameter("birthday");
      String phone = request.getParameter("phone");
      String gender = request.getParameter("gender");
      String padr1 = request.getParameter("addr1");
      String padr2 = request.getParameter("addr2");
      String padr3 = request.getParameter("addr3");
      String pemail = request.getParameter("pemail");
      String psday = request.getParameter("psday");
      String pvday = request.getParameter("pvday");
      
   %>
   
   <p> 아이디 :  <%=pid %>
   <p> 비밀번호  : <%=pwd %>
   <p> 이름 :  <%=pname %>
   <p> 생일 :  <%=pbirth %>
   <p> 전화번호 : <%=phone %>
   <p> 성별 :  <%=gender %>
   <p> 주소 :  <%=padr %>
   <p> 이메일 :  <%=pemail %>
   <p> 가입일 :  <%=psday %>
   <p> 방문일 :  <%=pvday %>
   

</body>
</html>