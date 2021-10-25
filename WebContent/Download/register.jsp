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
<title>Register</title>
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
<h1 class="text-center">Download registration</h1>
<p style="max-width:400px">To register for our downloads, enter your name and email
   address below. Then, click on the Submit button.</p>
<div class="row justify-content-center">
<form action="download" method="post" style="margin:10px auto;">
    <input type="hidden" name="action" value="registerUser"> 
    <p><i>${message}</i></p>       
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="<c:out value='${user.email}'/>"><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" value="<c:out value='${user.firstName}' />"><br>
    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" value="<c:out value='${user.lastName}'/>"><br>        
    <label>&nbsp;</label>
    <input type="submit" value="Register" class="margin:5px auto">
</form>
</div>

</div>
</section>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>

</html>
