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
<title>Survey</title>
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
<body style="background: #eee; position: relative;">

	<jsp:include page="../common/header.jsp"></jsp:include>


	<div class="app">
		<section>
		<div class="content">
	
			<h1 class="text-center">Thanks for taking our survey!</h1>

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
		</div>
		</section>
	</div>


	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>