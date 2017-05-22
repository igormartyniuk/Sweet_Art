<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sweet Art</title>
</head>
<body>

	<h1 style="text-align: center; color: #ce7e01">registration</h1>
	<p style="text-align: center"><a style="color: #ce7e01; font-size: 25px; text-decoration: none;" href="/">HOME</a></p>

	<div style="text-align: center;">

		<form action="/saveUser" method="post">
			<input type="text" name="username" placeholder="username"> <br>
			<br> <input type="email" name="useremail" placeholder="email">
			<br> <br> <input type="password" name="userpassword"
				placeholder="password"> <br> <br>

			<button>save user</button>
		</form>

	</div>
	
	<div style="display: inline-block"> 
		<ol>
		
		<div style="width: 150px; height: 20px; color:#ce7e01; border-bottom: 1px solid #ce7e01; border-right:1px solid #ce7e01;
		display: inline-block; text-align: center; margin-bottom: 5px">User Name </div>
		
		<div style="width: 180px; height: 20px; color:#ce7e01;
		 border-bottom: 1px solid #ce7e01; border-left: 1px solid #ce7e01; border-right: 1px solid #ce7e01;
		display: inline-block; text-align: center; margin-bottom: 5px">User Email</div>
		
		<div style="width: 150px; height: 20px; color:#ce7e01; border-bottom: 1px solid #ce7e01; 
		border-bottom: 1px solid #ce7e01; border-left: 1px solid #ce7e01; border-right: 1px solid #ce7e01;
		display: inline-block; text-align: center; margin-bottom: 5px">User Password</div>
		
		<div style="width: 80px; height: 20px; color:#ce7e01; 
		border-bottom: 1px solid #ce7e01; border-left: 1px solid #ce7e01; border-right: 1px solid #ce7e01;
		display: inline-block; text-align: center">UPDATE</div>
		
		<div style="width: 80px; height: 20px; color:#ce7e01; border-bottom: 1px solid #ce7e01;  border-left:1px solid #ce7e01;
		display: inline-block; text-align: center">REMOVE</div>
		
			<c:forEach var="u" items="${users}">
				<li>
					<div
						style="width: 150px; height: 20px;
						border: 1px solid black; 
						display: inline-block;
						text-align: center;">
						${u.name}
					</div> 
					
					<div
						style="width: 180px; height: 20px;
						border: 1px solid black; 
						display: inline-block;
						text-align: center;">
						${u.email}
					</div> 
					
					<div
						style="width: 150px; height: 20px; 
						border: 1px solid black; 
						display: inline-block;
						text-align: center;">
						${u.password}
					</div>
					
					<div
						style="width: 80px; height: 20px;
						border: 1px solid black; 
						display: inline-block;
						text-align: center;">	 
						<a href="/updateUser/${u.id}">update</a>
					</div>
					
					<div
						style="width: 80px; height: 20px;
						border: 1px solid black; 
						display: inline-block;
						text-align: center;">	 
						<a href="/deleteUser/${u.id}">delete</a>
					</div>
					
			</c:forEach>
		</ol>
	</div>
</body>
</html>