<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TO-DO</title>
<link rel="stylesheet" type="text/css" href="css/index.css?v=3">
<link rel="stylesheet" type="text/css" href="css/todo.css?v=3">
</head>
<body>
	<header>
		<div id="header">
			<button id="logo" onclick="location.href='index.jsp'">Secretary</button>
		</div>
		<div id="nav">
			<button class="tablink" onclick="location.href='todo.jsp'">TO-DO</button>
			<button class="tablink" onclick="location.href='contacts.jsp'">CONTACTS</button>
		</div>
	</header>
	<section>
		<div id="claendar_wrap">
			<table id="calendar">
				<br>
				<tr>
					<th colspan="2"><a href="#" id="prev">prev</a></th>
					<th colspan="3"><span class="year">년</span><span class="month">월</span></th>
					<th colspan="2"><a href="#" id="next">next</a></th>
				</tr>
				
				<tr>
					<th>일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>

				<%
					for(int i = 0; i < 6; i++){
				%>
				<tr>
					<!-- 1주 -->
					<td>&nbsp;</td><!-- &nbsp는 공백문자 -->
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<%
					}
				%>
			</table>
			<!-- END OF CALENDAR TABLE -->
		</div>
		<!-- END OF calendar_wrap -->
		
		<button id="add" onclick="todoAdd()">목록추가</button>
		<div id="myModal" class="modal">
      		<!-- Modal content -->
      		<div class="modal-content">
        		<span class="close">&times;</span>                                                               
        		<form action="add_todo.jsp" method="post">                                    
                 <textarea name="content" id="content"></textarea><br>
                 <input type="submit"  id="formlogin"  value="추가">
              	</form>
      		</div>
    	</div>
	</section>
	

	<!-- SCRIPT START -->
	<script>
		function calendar(new_year, new_month) {
			var d = new Date(new_year, new_month - 1, 1), d_length = 32 - new Date(
					new_year, new_month - 1, 32).getDate(), //32는 최대 날짜
			year = d.getFullYear(), month = d.getMonth(), date = d.getDate(), day = d
					.getDay();

			//caption에 연도, 월을 표시하자
			var caption_year = document.querySelector('.year'), //id로 선언했으면 getelementbyid로 하면 됨  class는 queryselector
			caption_month = document.querySelector('.month');

			var start_day = document.querySelectorAll('tr td');

			//테이블 초기화
			for (var i = 0; i < start_day.length; i++) {
				start_day[i].innerHTML = '&nbsp;'
			}

			//실제 날짜를 테이블 시작 요일부터 순서대로 출력
			for (i = day; i < day + d_length; i++) {
				start_day[i].innerHTML = date;
				date++;
			}

			//caption에 연도, 월을 표시
			caption_year.innerHTML = year;
			caption_month.innerHTML = month + 1;
		} //END OF FUNCTION calendar();

		(function() {
			var prev = document.getElementById('prev');
			var next = document.getElementById('next');
			var year = new Date().getFullYear();
			var month = new Date().getMonth() + 1;

			//시스템으로 부터 현재 날짜를 읽어서  calendar함수 호출
			calendar(year, month);

			//이전 달, 다음달 클릭 시 이벤트 핸들링
			prev.onclick = function() {
				calendar(year, --month);
			}
			next.onclick = function() {
				calendar(year, ++month);
			}
		})();
		
		function todoAdd(){
		// Get the modal
        var modal = document.getElementById('myModal');
 
        // Get the button that opens the modal
        var btn = document.getElementById("add");
 
        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];                                          
 
        // When the user clicks on the button, open the modal 
        btn.onclick = function() {
            modal.style.display = "block";
        }
 
        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }
 
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
		}

	</script>
	<!-- SCCRIPT END -->
</body>
</html>