<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>??????? ?????????</title>
</head>
<body>

	<h1 style="text-align: center; color: #ce7e01">registration</h1>
	<p style="text-align: center"><a style="color: #ce7e01; font-size: 25px; text-decoration: none;" href="/">HOME</a></p>


	<div style="text-align: center;">

		<form action="/updateUser/${currentUser.id}" method="post">
			<input type="text" name="name" value="${currentUser.name }" placeholder="username">
			<br>
			<br> 
			<input type="email" name="email" value="${currentUser.email}" placeholder="email">
			<br> 
			<br> 
			<input type="password" name="password" value="${currentUser.password}"placeholder="password"> <br> <br>

			<button>save user</button>
		</form>

	</div>

</body>
</html>