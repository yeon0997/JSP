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
            <button id="logo">Secretary</button>
        </div>
        <div id="nav">
            <button class="tablink" onclick="openPage('todo', this, '#C2FFC2')">TO-DO</button>
            <button class="tablink" onclick="openPage('contacts', this, '#C2FFC2')">CONTACTS</button>
        </div>
    </header>
    <section>
            <button id="add-btn">목록추가</button>
            <ul id="list">
                <li>eating</li>
                <li>sleeping</li>
                <li>go to academy</li>
            </ul>
    </section>
  
<!-- SCRIPT START -->
    <script>
        function openPage(pageName, elmnt, color) {
            var i, tabcontent, tablinks;    
            tabcontent = document.getElementsByClassName("tabcontent");
                for(i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
            tablinks = document.getElementsByClassName("tablink");
                for(i = 0; i < tablinks.length; i++) {
                    tablinks[i].style.backgroundColor = "";
                }
            document.getElementById(pageName).style.display = "block";
            elmnt.style.backgroundColor = color;
            }
            //document.getElementById("defalutOpen").click();
        //Full Page Tabs

        var title = document.getElementById("title");
        var list = document.getElementById("list");
        var li = document.getElementsByTagName("li");
        var addBtn = document.getElementById("add-btn");

        //목록과 이벤트 리스너 연결
        //각 목록이 선택될 때 active되어지는 것을 표기하기 위한 함수 등록
        for(var i=0; i <li.length; i++){
            //li[i].addEventListener('click', activeItem);
            list.addEventListener('click', activeItem);
        }

        function activeItem(event){
            //클릭한 노드가 li이면 
            if(event.target.nodeName =="LI"){
                title.innerHTML = event.target.innerText;

            for(var i=0; i<event.target.parentNode.children.length; i++){
                event.target.parentNode.children[i].removeAttribute('class');
            }
        }
            event.target.setAttribute('class', 'active');
        }

        addBtn.addEventListener('click', function(){
            var txt = prompt('할 일 입력');
            list.innerHTML +='<li>' + txt + '</li>'
        });
    </script>
<!-- SCCRIPT END -->
</body>
</html>