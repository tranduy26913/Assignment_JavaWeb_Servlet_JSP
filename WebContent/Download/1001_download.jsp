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
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/download.css' />">
</head>
<body style="background: #eee; position: relative;">

	<jsp:include page="../common/header.jsp"></jsp:include>


	<div class="app" style="min-height: 400px;">
		<div class="row container-fluid"
			style="min-height: 400px; justify-content: center; align-content: center;">
			<section>
			<h1 style="text-align: center;margin-bottom:20px;">Downloads</h1>

			<h2>86 (the band) - True Life Songs and Pictures</h2>

			<table>
				<tr>
					<th>Song title</th>
					<th>Audio Format</th>
				</tr>
				<tr>
					<td>You Are a Star</td>
					<td><a href="/musicStore/sound/${productCode}/star.mp3">MP3</a></td>
				</tr>
				<tr>
					<td>Don't Make No Difference</td>
					<td><a
						href="/musicStore/sound/${productCode}/no_difference.mp3">MP3</a></td>
				</tr>
			</table>

			<p>
				<a href="?action=viewAlbums">View list of albums</a>
			</p>

			<p>
				<a href="?action=viewCookies">View all cookies</a>
			</p>
			</section>
			
		</div>
	</div>


	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>

