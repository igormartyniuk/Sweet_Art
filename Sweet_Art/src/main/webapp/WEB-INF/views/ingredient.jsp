<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sweet Art</title>
</head>
<body>
<h1 style="text-align: center; color: #ce7e01">Ingredient</h1>

	<div style="text-align: center; margin-top: 5%">
		<form action="/ingredient" method="post">
			<input  type="text" name="ingredientName"  placeholder="ingredient"> 
			<br>
			<input type="text" name="ingredientPrice" placeholder="price"> 
			<br>
			<br>
			<button>save ingredient</button>
		</form>
	</div>
		
	<ol>
		<c:forEach var="ingredient" items="${ingredient}">
			<li>${ingredient.name}<a href="/deleteIngredient/${ingredient.id}"> delete</a></li>
		</c:forEach>
	</ol>

</body>
</html>