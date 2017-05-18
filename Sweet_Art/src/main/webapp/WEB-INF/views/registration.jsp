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
	<p style="text-align: center"><a  style="color: #ce7e01" href="/">index</a></p>

	<div style="text-align: center; margin-top: 5%">

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
			<c:forEach var="u" items="${users}">
				<li
					style="border-top: 1px solid black; 
					margin-top: 5px;
					padding-top: 5px; ">
					${u.name}  || 
					${u.email} || 
					${u.password} <a href="/deleteUser/${u.id}">delete</a> <br>
					<br>
			</c:forEach>
		</ol>
	</div>
</body>
</html>