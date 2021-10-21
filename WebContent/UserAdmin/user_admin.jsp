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

				<h1 class="text-center">Danh sách User</h1>
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th colspan="3">Email</th>
					</tr>
					<c:forEach var="user" items="${users}">
						<tr>
							<td>${user.firstName}</td>
							<td>${user.lastName}</td>
							<td>${user.email}</td>
							<td><a
								href="userAdmin?action=display_user&amp;email=${user.email}">Update</a></td>
							<td><a
								href="userAdmin?action=delete_user&amp;email=${user.email}">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
				<form action="userAdmin" method="post" class="row justify-content-center">
					<input type="submit" value="Refresh">
				</form>

			</div>
		</section>
	</div>


	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>