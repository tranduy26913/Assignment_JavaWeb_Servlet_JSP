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


	<div class="app">
		<div class="row container-fluid"
			style="min-height: 300px; justify-content: center; align-content: center;">
			<section>
			
<h1>Downloads</h1>

<h2>Joe Rut - Genuine Wood Grained Finish</h2>
    
<table>
<tr>
    <th>Song title</th>
    <th>Audio Format</th>
</tr>
<tr>
    <td width="200"><b>Song title</b></td>
    <td width="150"><b>Audio Format</b></td>
</tr>
<tr>
    <td>Filter</td>
    <td><a href="/musicStore/sound/${productCode}/filter.mp3">MP3</a></td>
</tr>
<tr>
    <td>So Long Lazy Ray</td>
    <td><a href="/musicStore/sound/${productCode}/so_long.mp3">MP3</a></td>
</tr>
</table>

<p><a href="?action=viewAlbums">View list of albums</a></p>

<p><a href="?action=viewCookies">View all cookies</a></p>
			</section>
			
			
		</div>
	</div>


	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>