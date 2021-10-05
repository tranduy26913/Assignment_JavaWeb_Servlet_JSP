<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/png"
	href="<c:url value='/assets/img/favicon.ico'/>">
<title>Email List</title>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,100&display=swap&subset=vietnamese"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/main.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/bootstrap/css/bootstrap.min.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/font/fontawesome-free-5.15.3-web/css/all.min.css' />">
<style>
</style>
</head>
<body style="background: #eee; position: relative;">

	<jsp:include page="../common/header.jsp"></jsp:include>


	<div class="app">
		<div class="row container-fluid"
			style="min-height: 300px; justify-content: center; align-content: center;">
			<section style="background-color:#fff;border-radius:12px;border:1px solid #aaa;padding:20px">
				<h1 style="text-align: center;margin-bottom:20px;">List of albums</h1>

				<p style="font-size: 1.6rem;">User Email: ${cookie.userEmail.value}</p>

				<p style="font-size:1.6rem;">
					<a href="download?action=checkUser&amp;productCode=1001"> 86
						(the band) - True Life Songs and Pictures </a><br> 
					<a href="download?action=checkUser&amp;productCode=1002">
						Paddlefoot - The First CD </a><br> 
					<a href="download?action=checkUser&amp;productCode=1003">
						Paddlefoot - The Second CD </a><br> 
					<a href="download?action=checkUser&amp;productCode=1004"> Joe Rut
						- Genuine Wood Grained Finish </a>
				</p>
			</section>
		</div>
	</div>


	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>