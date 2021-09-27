<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/png" href="<c:url value='/assets/img/favicon.ico'/>">
<title>Thank you</title>
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
	
	.info-wrap {
		background-color: #fff;
		padding: 20px;
		width: 400px;
		border-radius:10px;
		z-index: 2 !important;
	}
	
	.info-wrap span{
	font-size:1.6rem;
	}
	.info {
		width:100%;height: 300px;position: relative !important;justify-content: center;
align-content: center;
	}
	
	label {
		font-size:1.6rem;
		width:100px;
	}
	.btn-submit {
	width: 100%;
    padding: 10px;
    display: flex;
    justify-content: center;
}
	
	
	</style>
</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<div class="app">
	<div class="row info">
		<div class="info-wrap">
			<label>Email:</label><span>${user.email}</span><br>
			<label>First Name:</label><span>${user.firstName}</span><br>
			<label>Last Name:</label><span>${user.lastName}</span><br>
			<span>To enter another email, click on the back button in your browser or Return button shown belown</span>
			<form action="" method="post">
				<input type="hidden" name="action" value="join"> 
				<div class="btn-submit">
					<input type="submit" value="Return" style="font-size:1.6rem;"><br>
				</div>
			</form>
		</div>
	</div>
</div>
		
</body>
</html>