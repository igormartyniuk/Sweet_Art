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
	<h1 style="text-align: center; color: #ce7e01">Ingredient</h1>
	<p style="text-align: center">
		<a style="color: #ce7e01" href="/">index</a>
	</p>

	<div style="text-align: center;">
		<form action="/ingredient" method="post">
			<input type="text" name="ingredientName" placeholder="ingredient">
			<br> <input type="text" name="ingredientPrice"
				placeholder="price"> <br> <br>
			<button>save ingredient</button>
		</form>
	</div>

	<div style="display: inline-block">
		<ol>
		
		<div style="width: 151px; height: 20px; color:#ce7e01; border-bottom: 1px solid #ce7e01; border-right:1px solid #ce7e01;
		display: inline-block; text-align: center; margin-bottom: 5px">Ingredient name</div>
		
		<div style="width: 52px; height: 20px; color:#ce7e01; border-bottom: 1px solid #ce7e01; 
		display: inline-block; text-align: center">Price</div>
		
		<div style="width: 80px; height: 20px; color:#ce7e01; border-bottom: 1px solid #ce7e01;  border-left:1px solid #ce7e01;
		display: inline-block; text-align: center">REMOVE</div>

			<c:forEach var="ingredient" items="${ingredient}">
				<li>
					<div
						style="width: 150px; height: 20px;
						border: 1px solid black; 
						display: inline-block;
						text-align: center;">
						${ingredient.name}
					</div>
					<div
						style="width: 50px; height: 20px; 
						border: 1px solid black; 
						display: inline-block;
						text-align: center;">
						${ingredient.price}
					</div>
					<div
						style="width: 80px; height: 20px;
						border: 1px solid black; 
						display: inline-block;
						text-align: center;">	 
						 <a href="/deleteIngredient/${ingredient.id}">delete</a>
					</div>
					<br>
					<br>
			</c:forEach>
		</ol>
	</div>

</body>
</html>