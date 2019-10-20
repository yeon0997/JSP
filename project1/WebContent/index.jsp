<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
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
            <div id="todo" class="tabcontent">
                <h3>TO-DO</h3>
                <p>write your schedules!</p>
            </div>
            <div id="contacts" class="tabcontent">
                <h3>CONTACTS</h3>
                <p>add contact!</p>
            </div>
        </div>
    </header>
    <section>
        <div id="login">
            <button id="btnLogin">Log-in</button>
        </div>
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
        document.getElementById("defalutOpen").click();
    </script>
<!-- SCCRIPT END -->
</body>
</html>