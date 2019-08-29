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
      String phone1 = request.getParameter("phone1");
      String phone2 = request.getParameter("phone2");
      String phone3 = request.getParameter("phone3");
      String gender = request.getParameter("gender");
      String addr1 = request.getParameter("addr1");
      String addr2 = request.getParameter("addr2");
      String addr3 = request.getParameter("addr3");
      String pemail = request.getParameter("pemail");
      String psday = request.getParameter("psday");
      String pvday = request.getParameter("pvday");
      
   %>
   
   <p> 아이디 :  <%=pid %>
   <p> 비밀번호  : <%=pwd %>
   <p> 이름 :  <%=pname %>
   <p> 생일 :  <%=pbirth %>
   <p> 전화번호 : <%=phone1 %> - <%=phone1 %> - <%=phone1 %>
   <p> 성별 :  <%=gender %>
   <p> 주소 :  <%=addr1 %> <%=addr2 %> <%=addr3 %>
   <p> 이메일 :  <%=pemail %>
   <p> 가입일 :  <%=psday %>
   <p> 방문일 :  <%=pvday %>
   

</body>
</html>