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
	<h1 style="text-align: center; color: #ce7e01">Orders</h1>
	<p style="text-align: center">
		<a style="color: #ce7e01" href="/">index</a>
	</p>

	<div style="text-align: center;">

		<form action="/saveOrders" method="post">
			<input type="text" name="orderType" placeholder="orderType"> <br>
			<br> <input type="text" name="orderName" placeholder="orderName">
			<br> <br> <input type="text" name="numbers"
				placeholder="numbers"> <br> <br> <input
				type="text" name="date" placeholder="date"> <br> <br>

			<button>save order</button>
		</form>

	</div>

	<div style="display: inline-block">
		<ol>

			<div
				style="width: 152px; height: 20px; color: #ce7e01; border-bottom: 1px solid #ce7e01; border-right: 1px solid #ce7e01; display: inline-block; text-align: center; margin-bottom: 5px">Orders
				type</div>

			<div
				style="width: 150px; height: 20px; color: #ce7e01; border-bottom: 1px solid #ce7e01; border-right: 1px solid #ce7e01; display: inline-block; text-align: center; margin-bottom: 5px">Orders
				name</div>

			<div
				style="width: 60px; height: 20px; color: #ce7e01; border-bottom: 1px solid #ce7e01; display: inline-block; text-align: center">Numbers</div>

			<div
				style="width: 80px; height: 20px; color: #ce7e01; border-bottom: 1px solid #ce7e01; border-left: 1px solid #ce7e01; display: inline-block; text-align: center">REMOVE</div>

			<c:forEach var="order" items="${orders}">
				<li>
					<div
						style="width: 150px; height: 20px; border: 1px solid black; display: inline-block; text-align: center;">
						${order.type}
					</div>

					<div
						style="width: 150px; height: 20px; border: 1px solid black; display: inline-block; text-align: center;">
						${order.cakeName}
					</div>

					<div
						style="width: 60px; height: 20px; border: 1px solid black; display: inline-block; text-align: center;">
						${order.number}
					</div>

					<div
						style="width: 80px; height: 20px; border: 1px solid black; display: inline-block; text-align: center;">
						<a href="/deleteOrders/${order.id}">delete</a>
					</div>
			</c:forEach>
		</ol>
	</div>
</body>
</html>