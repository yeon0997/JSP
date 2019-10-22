<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
   request.setCharacterEncoding("UTF-8");
   
   String id = request.getParameter("id");
   String pw = request.getParameter("pwd");
   
   if((id.equals("admin") && pw.equals("admin"))) {
      session.setAttribute("id", id);
      response.sendRedirect("todo.jsp");
   } else {
      response.sendRedirect("login_fail.jsp");
   }
%>
<script>
   alert("로그인 실패");
   location.href="login_fail.jsp"
</script>