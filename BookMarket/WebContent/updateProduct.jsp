<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"	href="./resources/css/bootstrap.min.css">
<title>도서 수정</title>
</head>
<body>

	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 수정</h1>
		</div>
	</div>
	<%@ include file = "dbconn.jsp" %>
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
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=rs.getString("b_fileName")%>" alt="image" style="width: 100%">
			</div>
			<div class="col-md-7">
				<form name="newProduct" action="./processUpdateProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2">도서 코드</label>
						<div class="col-sm-3">
							<input type="text" id="productId" name="productId" class="form-control" value='<%=rs.getString("b_id")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">도서명</label>
						<div class="col-sm-3">
							<input type="text" id="name" name="name" class="form-control" value="<%=rs.getString("b_name")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">가격</label>
						<div class="col-sm-3">
							<input type="text" id="unitPrice" name="unitPrice" class="form-control" value="<%=rs.getInt("b_unitPrice")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상세 설명</label>
						<div class="col-sm-5">
							<textarea name="description" cols="50" rows="2" class="form-control"><%=rs.getString("b_description")%></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">출판사</label>
						<div class="col-sm-3">
							<input type="text" name="manufacturer" class="form-control" value="<%=rs.getString("b_manufacturer")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">분류</label>
						<div class="col-sm-3">
							<input type="text" name="category" class="form-control" value="<%=rs.getString("b_category")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">제고수</label>
						<div class="col-sm-3">
							<input type="text" id="unitsInStock" name="unitsInStock" class="form-control" value="<%=rs.getLong("b_unitsInStock")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상태</label>
						<div class="col-sm-5">
							<input type="radio" name="condition" value="New "> 신규 서적
							<input type="radio" name="condition" value="Old"> 중고 서적
							<input type="radio" name="condition" value="Refurbished"> 재생 서적
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">이미지</label>
						<div class="col-sm-5">
							<input type="file" name="productImage" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<input type="submit" class="btn btn-primary" value="등록">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
			<%
				}
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>
</body>
</html>