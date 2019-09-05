<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.BookProduct"%>
<%@ page import="dao.BookProductRepository"%>
<html>
<head>
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>

	<div class="container">
		<div class="row" align="center">
			<%@ include file = "dbconn.jsp"%>
			<%
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					String sql = "select * from books";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while(rs.next()){
	
			%>
			<div class="col-md-4">
				<img src="./resources/images/<%=rs.getString("b_fileName")%>" style="width: 100%">
				<h3><%=rs.getString("b_name")%></h3>
				<p><%=rs.getString("b_description")%>
				<p><%=rs.getString("b_UnitPrice")%>원
				<p><a href="./product.jsp?id=<%=rs.getString("b_id")%>"
						class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
			</div>
			<%
				}
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			%>


		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
