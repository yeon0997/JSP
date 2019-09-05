<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.BookProduct"%>
<%@ page import="dao.BookProductRepository"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<html>
<head>
<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}		else{
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 정보</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<%@ include file = "dbconn.jsp"%>
			<%
				String productId = request.getParameter("id");
			
				PreparedStatement pstmt = null;
				ResultSet rs = null;
			
				String sql = "select * from books where b_id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, productId);
				rs = pstmt.executeQuery();
				while(rs.next()){
			%>
			<div class="col-md-5">
				<img src="./resources/images/<%=rs.getString("b_fileName")%>" style="width: 100%">
			</div>
			<div class="col-md-6">
				<h3><%=rs.getString("b_name")%></h3>
				<p><%=rs.getString("b_description")%>
				<p><b>서적 코드 : </b><span class="badge badge-danger"> <%=rs.getString("b_id")%></span>
				<p><b>제조사</b> : <%=rs.getString("b_manufacturer")%>
				<p><b>분류</b> : <%=rs.getString("b_category")%>
				<p><b>재고 수</b> : <%=rs.getString("b_unitsInStock")%>
				<h4><%=rs.getString("b_UnitPrice")%>원</h4>
				<p><form name="addForm" action="./addCart.jsp?id=<%=rs.getString("b_id")%>" method="post">
						<a href="#" class="btn btn-info" onclick="addToCart()"> 도서 주문 &raquo;</a> 
						<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
						<a href="./products.jsp" class="btn btn-secondary"> 도서 목록 &raquo;</a>
					</form>
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
