<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./sources/js/register.js"></script>
<meta charset="UTF-8">
<title>상품등록</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원가입</h1>
		</div>
	</div>
	<div class="container">
		<form name="registerForm" action="validation_process.jsp"
		class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text" id ="id" name="id" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input type="text" id="passwd"  name="passwd" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이름</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">휴대전화</label>
				<div class="col-sm-3">
					<select  name="phone1" id="phone1">
									<option value="010"	>010</option>
									<option value="011"	>011</option>
									<option value="016"	>016</option>
									<option value="017"	>017</option>
									<option value="019"	>019</option>
									</select> - 
									<input type="text" maxlength="4" size="4" name="phone2" id="phone2"> - 
									<input type="text" maxlength="4" size="4" name="phone3" id="phone3">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-5">
					<input type = "radio" name = "gender" value = "여자" checked = "checked"> 여자    
       				<input type = "radio" name = "gender" value = "남자">남자
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-3">
					<input type="text" name="email">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">생년월일</label>
				<div class="col-sm-3">
					<input type="text" name="year" id="year"> / <input type="text" name="month" id="month"> / <input type="text" name="day" id="day">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소1</label>
				<div class="col-sm-3">
					<select name="addr1" id="addr1">
									<option value="청주시"	>청주시</option>
								</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소2</label>
				<div class="col-sm-3">
					<select name="addr2" id="addr2">
									<option value="상당구"	>상당구</option>
									<option value="흥덕구"	>흥덕구</option>
									<option value="청원구"	>청원구</option>
									<option value="서원구"	>서원구</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소3</label>
				<div class="col-sm-3">
					<input type="text" name="addr3" id="addrss3">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">방문일</label>
				<div class="col-sm-3">
					<input type="text" name="year1" id="year1"> / <input type="text" name="month1" id="month1"> / <input type="text" name="day1" id="day1">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">가입일</label>
				<div class="col-sm-3">
					<input type="text" name="year2" id="year2"> / <input type="text" name="month2" id="month2"> / <input type="text" name="day2" id="day2">
				</div>
			</div>
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="button" class="btn btn-primary" value="가입"  onclick="check()">
				</div>
		</form>
	</div>
</body>
</html>