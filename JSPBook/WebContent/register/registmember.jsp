<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="register.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="validation_process" name="registerForm" method="post">
		<p>아 이 디* : <input type="text"  name = "id" id ="id">
		<p>비밀번호* : <input type="text"  name = "passwd" id ="passwd">
		<p>이     름 *: <input type="text" name = "name"> 
		<p>휴대전화 : <select  name="phone1" id="phone1">
									<option value="010"	>010</option>
									<option value="011"	>011</option>
									<option value="016"	>016</option>
									<option value="017"	>017</option>
									<option value="019"	>019</option>
									</select> - 
									<input type="text" maxlength="4" size="4" name="phone2" id="phone2"> - 
									<input type="text" maxlength="4" size="4" name="phone3" id="phone3">
									
		<p>성     별 : <input type = "radio" name = "gender" value = "여자" checked = "checked"> 여자    
       							  <input type = "radio" name = "gender" value = "남자">남자
		<p>이 메 일* :  <input type="text" name="email">
		<p>생년월일 :   <input type="text" name="year" id="year"> / <input type="text" name="month" id="month"> / <input type="text" name="day" id="day">
		<p>주    소1 :  <select name="address1" id="addrss1">
									<option value="청주시"	>청주시</option>
								</select>
		<p>주    소2  : <select name="address2" id="addrss2">
									<option value="상당구"	>상당구</option>
									<option value="흥덕구"	>흥덕구</option>
									<option value="청원구"	>청원구</option>
									<option value="서원구"	>서원구</option>
								</select>
		<p>주    소3  : <input type="text" name="addr3" id="addrss3">
		<p>방문일 :   <input type="text" name="year1" id="year1"> / <input type="text" name="month1" id="month1"> / <input type="text" name="day1" id="day1">
		<p>가입일 :   <input type="text" name="year2" id="year2"> / <input type="text" name="month2" id="month2"> / <input type="text" name="day2" id="day2">
		<p><input type = "button" value="가입" onclick="check()">
	</form>
</body>
</html>