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
<title>Download</title>
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
				<h1 class="text-center">Downloads</h1>

				<h2><c:out value='${product.productName }'/></h2>

				<table>
					<tr>
						<th>Song title</th>
						<th>Audio Format</th>
					</tr>
					<c:forEach var="song" items="${songs}">
						<tr>
							<td><c:out value='${song.songName }' /></td>
							<td><a
								href="${pageContext.request.contextPath}/Music/<c:out value='${product.productCode}'/>/<c:out value='${song.fileName}'/>.mp3">MP3</a></td>
						</tr>
					</c:forEach>
				</table>

				<p><a href="?action=viewAlbums">View list of albums</a></p>
				<p><a href="?action=viewCookies">View all cookies</a></p>
			</div>
		</section>
	</div>


	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>

