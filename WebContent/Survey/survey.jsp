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
<title>Survey</title>
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
label {
	margin-left: 20px;
	width: 90px;
}

.title h1 {
	font-size: 2rem;
	width: 100%;
	text-align: center;
	margin-bottom: 10px;
}
.survey-wrap {
		background-color: #fff;
		padding: 20px;
		width: 400px;
		border-radius:10px;
		z-index: 2 !important;
	}
	
	.survey-wrap span{
	font-size:1.6rem;
	}

br {
	clear: both;
}

.survey {
	background-color: #fff;
	padding: 20px;
	width: 600px;
	border-radius: 10px;
	font-size: 1.6rem;
	z-index: 2 !important;
}
</style>
</head>
<body style="background: #eee; position: relative;">

	<jsp:include page="../common/header.jsp"></jsp:include>


	<div class="app">
		<div class="row"
			style="width: 100%; min-height: 400px; position: relative !important; justify-content: center; align-content: center;">
	<div class="survey-wrap">
	<section style="background-color:#fff;border-radius:12px;border:1px solid #aaa;padding:20px">
			<h1 style="text-align: center;margin-bottom:20px;">Thanks for taking our survey!</h1>

			<p>Here is the information that you entered:</p>

			<label>Email:</label> <span>${user.email}</span><br> 
			<label>First Name:</label> <span>${user.firstName}</span><br> 
			<label>Last Name:</label> <span>${user.lastName}</span><br> 
			<label>Heard From:</label> <span>${user.heardFrom}</span><br> 
			<label>Updates:</label> <span>${user.wantsUpdates}</span><br>

			<c:if test="${user.wantsUpdates == 'Yes'}">
				<label>Contact Via:</label>
				<span>${user.contactVia}</span>
			</c:if>
		</section>
		</div>
		</div>
	</div>


	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>