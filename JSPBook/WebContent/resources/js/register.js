	function check() {
		
		var id = document.getElementById("id");
		var name = document.getElementById("name");
		var passwd = document.getElementById("passwd");
		var email = document.getElementById("email");
		
		var expid = /^[a-zA-Z]([a-z|A-Z|0-9]){7,11}/;
		var exppasswd = /^[a-zA-Z0-9]([a-z|A-Z|0-9|!|@|#|$|%|^|&|*]){7,19}$/;
		var expname = /^[가-힣|a-z]{2,19}$/;
		var expemail =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
		var form = document.registerForm;
		
		var id = form.id.value;
		var passwd = form.passwd.value;
		var name = form.name.value;
		var email = form.email.value;
		
		if(!expid.test(id)){
			alert("아이디는 영/숫자를 조합하여 8~20자 이내로 입력하세요");
			id.select();
			id.focus();
			return false;
		}
		if(!exppasswd.test(passwd)){
			alert("비밀번호는 영대/영소문자,숫자와 허용된 특수문자를 조합하여 8~20자 이내로 입력하세요\n(사용가능한 특수문자 : !@#$%^&*)");
			passwd.select();
			passwd.focus();
			return false;
		}
		if(!expname.test(name)){
			alert("이름은 한글 또는 영소문자로 20자 이내로 입력하세요");
			name.select();
			name.focus();
			return false;
		}
		if(!expemail.test(email)){
			alert("이메일을 다시 입력하세요");
			email.select();
			email.focus();
			return false;
		}		
		document.registerForm.submit();
	}