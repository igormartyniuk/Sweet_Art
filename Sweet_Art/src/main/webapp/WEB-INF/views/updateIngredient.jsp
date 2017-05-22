<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>??????? ?????????</title>
</head>
<body>

<h1 style="text-align: center; color: #ce7e01">Ingredient</h1>
	<p style="text-align: center">
		<a style="color: #ce7e01; font-size: 25px; text-decoration: none;" href="/">HOME</a>
	</p>

	<div style="text-align: center;">
		<form action="/updateIngredient/${currentIngredient.id }" method="post">
			<input type="text" name="ingredientName" value="${currentIngredient.name }" placeholder="ingredient">
			<br>
			<br>
			<input type="text" name="ingredientPrice" value="${currentIngredient.price}"
				placeholder="price"> <br> <br>
			<button>update ingredient</button>
		</form>
	</div>

</body>
</html>