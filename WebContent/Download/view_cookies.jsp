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
<title>View Cookie</title>
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

				<h1 class="text-center">Cookies</h1>

				<p>Here's a table with all of the cookies that this browser is
					sending to the current server.</p>

				<table>
					<tr>
						<th>Name</th>
						<th>Value</th>
					</tr>
					<c:forEach var="c" items="${cookie}">
						<tr>
							<td><c:out value='${c.value.name}'/></td>
							<td><c:out value='${c.value.value}'/></td>
						</tr>
					</c:forEach>
				</table>

				<p>
					<a href="download?action=viewAlbums">View list of albums</a>
				</p>

				<p>
					<a href="download?action=deleteCookies">Delete all persistent
						cookies</a>
				</p>
			</div>
		</section>
	</div>


	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>
