<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/png" href="<c:url value='/assets/img/favicon.ico'/>">
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
label {
	margin-left: 20px;
	width:90px;
	
}

.title h1 {
	font-size:2rem;
	width:100%;
	text-align:center;
	margin-bottom:10px;
}

input [ "text "], input[ "email "] {
	width: 16rem;
	margin: 5px 10px;
	font-size: 1.8rem;
}

input ["submit"] {
}

.btn-submit {
	width: 100%;
    padding: 10px;
    display: flex;
    justify-content: center;
}

br {
	clear: both;
}

.emailList {
	background-color: #fff;
	padding: 20px;
	width: 400px;
	border-radius:10px;
	font-size:1.6rem;
	z-index: 2 !important;
}
</style>
</head>
<body style="background: #eee; position: relative;">

	<jsp:include page="../common/header.jsp"></jsp:include>
	
	
	<div class="app">
		<div class="row" style="width:100%;height: 300px;position: relative !important;justify-content: center;
align-content: center;">
			
			<form class="emailList" action="emailList" method="post">
			<div class="title">
				<h1>Join mail</h1>
			</div>
				<input type="hidden" name="action" value="add"> <label>Email:</label>
				<input type="email" name="email" required><br> <label>First
					name:</label> <input type="text" name="firstName" required><br>

				<label>Last name</label> <input type="text" name="lastName" required><br>
				<div class="btn-submit">
				<input type="submit" value="Join Now" id="submit"><br>
				</div>
			</form>
		</div>
	</div>


   <jsp:include page="../common/footer.jsp"></jsp:include>

	
</body>
</html>