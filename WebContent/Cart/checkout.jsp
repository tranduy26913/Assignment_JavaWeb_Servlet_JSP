<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/png"
	href="<c:url value='/assets/img/favicon.ico'/>">
<title>Download Lists</title>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,100&display=swap&subset=vietnamese"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/main.css'/>">
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="app">
		<section>
		<div class="content">
		<h1>Checkout isn't finished yet</h1>
		<p>Click on the browser's Back button to continue.</p>
		<form action="cart" method="post">
					<input type="hidden" name="action" value="shop"> <input
						type="submit" value="Continue Shopping">
		</form>
		</div>
		</section>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>