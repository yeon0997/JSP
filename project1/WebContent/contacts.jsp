<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.contact.Contact"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contacts</title>
<link rel="stylesheet" type="text/css" href="css/index.css?v=3">
<link rel="stylesheet" type="text/css" href="css/contacts.css?v=3">
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
	
	<br>
	<br>
	<table>
		<thead>
			<tr>
				<th>NAME</th>
				<th>NUMBER</th>
				<th>MEMO</th>
			</tr>
		</thead>
		<tbody>
			
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select name, phone, memo from contacts";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()){
			%>
			<tr>
				<td><%=rs.getString("name") %></td>
				<td><%=rs.getString("phone") %></td>
				<td><%=rs.getString("memo") %></td>
			</tr>
			<%
				} 
			%>
		
		<%
		if(rs != null)
			rs.close();
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
		%>
			
		</tbody>
	</table>
			
	<button id="add" onclick="addModal()">추가</button>
	<div id="addModal" class="modal-contacts-all">
		<!-- Modal content -->
		<div class="modal-contacts">
			<span class="addclose" >X</span>
			<form id="contact1" action="add_contact.jsp" method="post">
				<input type="text" name="name" id="inputcon" placeholder="name"><br>
				<input type="text" name="phone" id="inputcon" placeholder="phonenumber"><br>
				<input type="text" name="memo" id="inputcon" placeholder="memo"><br>
				<input type="submit" id="formBtn" value="추가">
			</form>
		</div>
	</div>
	
	<button id="modify" onclick="modifyModal()">수정</button>
	<div id="modifyModal" class="modal-contacts-all">
		<!-- Modal content -->
		<div class="modal-contacts">
			<span class="modifyclose">X</span>
			<form action="modify_contact.jsp" method="post">
				<input type="text" name="number" id="inputcon" placeholder="number"><br>
				<input type="text" name="name" id="inputcon" placeholder="name"><br>
				<input type="text" name="phone" id="inputcon" placeholder="phonenumber"><br>
				<input type="text" name="memo" id="inputcon" placeholder="memo"><br>
				<input type="submit" id="formBtn" value="수정">
			</form>
		</div>
	</div>
	<button id="delete" onclick="deleteModal()">삭제</button>
	<div id="deleteModal" class="modal-contacts-all">
		<!-- Modal content -->
		<div class="modal-contacts">
			<span class="deleteclose">X</span>
			<form action="delete_contact.jsp" method="post">
				<input type="text" name="number" id="inputcon" placeholder="number"><br>
				<input type="submit" id="formBtn" value="삭제">
			</form>
		</div>
	</div>

	<!-- SCRIPT START -->
	<script>
        function addModal(){
     // Get the modal
        var modal = document.getElementById('addModal');
 
        // Get the button that opens the modal
        var btn = document.getElementById("add");
 
        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("addclose")[0];                                          
 
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
    
        
        function modifyModal() {
    	// Get the modal
        var modal = document.getElementById('modifyModal');
 
        // Get the button that opens the modal
        var btn = document.getElementById("modify");
 
        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("modifyclose")[0];                                          
 
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
        
        function deleteModal() {
        	// Get the modal
            var modal = document.getElementById('deleteModal');
     
            // Get the button that opens the modal
            var btn = document.getElementById("delete");
     
            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("deleteclose")[0];                                          
     
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