<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function check(){

		var expid = /^[a-zA-Z]([a-z|A-Z|0-9]){7,11}/;
		var exppasswd = /^[a-zA-Z0-9]([a-z|A-Z|0-9|!|@|#|$|%|^|&|*]){7,19}$/;
		var expname = /^[가-힣|a-z]{2,19}$/;
		var expemail =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	

		var form = document.registerForm;
		
		var id = form.id.value;
		var passwd = form.passwd.value;
		var name = form.name.value;
		var email = form.email.value;
		

		if(id ==""){
			alert("아이디를 입력해주세요");
			id.select();
			id.focus();
			return false;
		}
		else if(!expid.test(id)){
			alert("아이디는 영/숫자를 조합하여 8~20자 이내로 입력하세요");
			id.select();
			id.focus();
			return false;
		}
		if(passwd ==""){
			alert("비밀번호를 입력해주세요");
			passwd.select();
			passwd.focus();
			return false;
		}
		else if(!exppasswd.test(passwd)){
			alert("비밀번호는 영대/영소문자,숫자와 허용된 특수문자를 조합하여 8~20자 이내로 입력하세요\n(사용가능한 특수문자 : !@#$%^&*)");
			passwd.select();
			passwd.focus();
			return false;
		}
		if(name ==""){
			alert("이름을 입력해주세요");
			name.select();
			name.focus();
			return false;
		}
		else if(!expname.test(name)){
			alert("이름은 한글 또는 영소문자로 20자 이내로 입력하세요");
			name.select();
			name.focus();
			return false;
		}
		if(!expphone.test(phone2)){
			alert("전화번호를 다시 입력하세요");
			phone.select();
			phone.focus();
			return false;
		}
		if(!expphone.test(phone3)){
			alert("전화번호를 다시 입력하세요");
			phone.select();
			phone.focus();
			return false;
		}
		if(email ==""){
			alert("이메일을 입력해주세요");
			email.select();
			email.focus();
			return false;
		}
		else if(!expemail.test(email)){
			alert("이메일을 다시 입력하세요");
			email.select();
			email.focus();
			return false;
		}
		if(!expaddr.test(addr3)){
			alert("주소는 한글과 숫자로만 입력하세요");
			addr3.select();
			addr3.focus();
			return false;
		}
		if(!expyear.test(year)){
			alert("년도는 0000형식으로 입력하세요");
			year.select();
			year.focus();
			return false;
		}
		if(!expmonth.test(month)){
			alert("월을 00형식으로 입력하세요");
			month.select();
			month.focus();
			return false;
		}
		if(!expday.test(day)){
			alert("일을 00형식으로 입력하세요");
			day.select();
			day.focus();
			return false;
		}
		
		form.submit();
	}
</script>
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
		<p>이 메 일* :  <input type="text" name="emali">
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
		<p><input type = "button" value="가입" onclick="check()">
	</form>
</body>
</html>