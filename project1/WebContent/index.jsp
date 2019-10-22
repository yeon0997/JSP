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
    	<!-- The Modal -->
    	<div id="myModal" class="modal">
      	
      		<!-- Modal content -->
      		<div class="modal-content">
        		<span class="close">&times;</span>                                                               
        		 <form action="login_session.jsp" method="post">                                    
                 	<input type="text" name="id" id="id" placeholder="ID" style="text-align:left; font-size: 20px; padding: 10px;"><br>
                	<input type="text" name="pwd" id="pwd"  placeholder="PW" style="text-align:left; font-size: 20px; padding: 10px;"><br>
                 	<input type="submit"  id="formlogin"  value="로그인">
              </form>
      		</div>
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
        //document.getElementById("defalutOpen").click();
        
        
 // Get the modal
        var modal = document.getElementById('myModal');
 
        // Get the button that opens the modal
        var btn = document.getElementById("btnLogin");
 
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

    </script>
<!-- SCCRIPT END -->
</body>
</html>