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
<title>Email List</title>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,100&display=swap&subset=vietnamese"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/main.css'/>">
<style>

.btn-submit {
	width: 100%;
    padding: 10px;
    display: flex;
    justify-content: center;
}

</style>
</head>
<body style="background: #eee; position: relative;">

	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<div class="app">
		<section>
			<div class="content">
			<form class="emailList" action="emailList" method="post">
			<div class="title">
				<h1 class="text-center">Join mail</h1>
				<p><i>${message}</i></p>
			</div>
				<input type="hidden" name="action" value="add"> <label>Email:</label>
				<input type="email" name="email" value="<c:out value='${user.email}'/> "><br> 
				<label>First name:</label> 
				<input type="text" name="firstName" value="<c:out value='${user.firstName}'/> "> <br>

				<label>Last name</label> 
				<input type="text" name="lastName" value="<c:out value='${user.lastName}'/>" > <br>
				<div class="btn-submit">
					<input type="submit" value="Join Now" id="submit"><br>
				</div>
			</form>
		</div>
		</section>
	</div>


   <jsp:include page="../common/footer.jsp"></jsp:include>

	
</body>
</html>