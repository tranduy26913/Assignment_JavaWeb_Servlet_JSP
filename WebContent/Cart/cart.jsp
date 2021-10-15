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
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="app">
		<section>
			<div class="content">
				<h1>Your cart</h1>

				<table>
					<tr>
						<th>Quantity</th>
						<th>Description</th>
						<th>Price</th>
						<th>Amount</th>
						<th></th>
					</tr>


					<c:forEach var="item" items="${cart.items}">
						<tr>
							<td>
								<form action="cart" method="post">
									<input type="hidden" name="productCode"
										value="${item.product.productCode}"> <input type=text
										name="quantity" value="${item.quantity}" id="quantity">
									<input type="submit" value="Update">
								</form>
							</td>
							<td>${item.product.productName}</td>
							<td>${item.product.priceCurrencyFormat}</td>
							<td>${item.totalCurrencyFormat}</td>
							<td>
								<form action="cart" method="post">
									<input type="hidden" name="productCode"
										value="${item.product.productCode}"> <input
										type="hidden" name="quantity" value="0"> <input
										type="submit" value="Remove Item">
								</form>
							</td>
						</tr>
					</c:forEach>
				</table>

				<p>
					<b>To change the quantity</b>, enter the new quantity and click on
					the Update button.
				</p>

				<form action="" method="post">
					<input type="hidden" name="action" value="shop"> <input
						type="submit" value="Continue Shopping">
				</form>

				<form action="cart" method="post">
					<input type="hidden" name="action" value="checkout"> <input
						type="submit" value="Checkout">
				</form>
			</div>
		</section>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>