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
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/download.css' />">
</head>
<body style="background: #eee; position: relative;">

	<jsp:include page="../common/header.jsp"></jsp:include>


	<div class="app">
		<section>
			<div class="content">
				<h1 style="text-align: center;margin-bottom:20px;">List of albums</h1>

				<c:if test="${cookie.userEmail.value!=null}">
					<p style="font-size: 1.6rem;">User Email: ${cookie.userEmail.value}</p>
				</c:if>
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
				</div>
			</section>
		
	</div>


	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>