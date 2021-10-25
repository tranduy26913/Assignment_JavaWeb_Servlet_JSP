<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/png" href="<c:url value='/assets/img/favicon.ico'/>">
<title>List Items</title>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,100&display=swap&subset=vietnamese"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/main.css'/>">

</head>
<body>

	<jsp:include page="../common/header.jsp"></jsp:include>


	<div class="app">
		<section>
			<div class="content">
			<h1 style="text-align: center;">CD list</h1>
			<table>
				<tr>
					<th>Description</th>
					<th class="right">Price</th>
					<th>&nbsp;</th>
				</tr>
				<c:forEach var="product" items="${products}">
				<tr>
					<td><c:out value='${product.productName}'/></td>
					<td class="right"><c:out value='${product.priceCurrencyFormat}'/></td>
					<td><form action="cart" method="post">
							<input type="hidden" name="productCode" value="<c:out value='${product.productCode}'/>">
							<input type="submit" value="Add To Cart">
						</form></td>
				</tr>
				
				</c:forEach> 
				
				
			</table>
			</div>
		</section>
	</div>


	<jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>