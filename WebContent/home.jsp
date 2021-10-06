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
<title>Đồ án Lập trình WEB</title>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,100&display=swap&subset=vietnamese"
	rel="stylesheet">


<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/bootstrap/css/bootstrap.min.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/main.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/font/fontawesome-free-5.15.3-web/css/all.min.css' />">
</head>
<body style="background: #eee; position: relative;">

	<jsp:include page="/common/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div style="height: 100%" class="carousel-inner ">
				<div class="carousel-item active img-style">
					<img class="d-block w-100 img-style"
						src="<c:url value='/assets/img/anh1.png' />" alt="First slide">
				</div>
				<div class="carousel-item img-style">
					<img class="d-block w-100 img-style"
						src="<c:url value='/assets/img/anh2.jpg'/>" alt="Second slide">
				</div>
				<div class="carousel-item img-style">
					<img class="d-block w-100 img-style"
						src="<c:url value='/assets/img/anh3.jpg' />" alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class="app">

		<div class="row assignment">
			<h2>DANH SÁCH BÀI TẬP</h2>
			<div class="assignment-list">
				<div class="col-12 col-sm-4 col-lg-2">
					<div class="card assignment-item">
						<div class="card-body">
							<a href="${pageContext.request.contextPath}/EmailListForm"
								class="card-title">Email List</a>
							<p class="card-text">Bài tập Email List</p>
							<p class="card-text">Chapter: 4, 5, 6.1</p>
						</div>
					</div>
				</div>

				<div class="col-12 col-sm-4 col-lg-2">
					<div class="card assignment-item">
						<div class="card-body">
							<a href="${pageContext.request.contextPath}/SurveyForm"
								class="card-title">Survey</a>
							<p class="card-text">Bài tập Survey</p>
							<p class="card-text">Chapter: 6.2</p>
						</div>
					</div>
				</div>

				<div class="col-12 col-sm-4 col-lg-2">
					<div class="card assignment-item">
						<div class="card-body">
							<a href="${pageContext.request.contextPath}/Dacta"
								class="card-title">Đặc tả đề tài</a>
							<p class="card-text">Đặc tả về đề tài cuối kì của nhóm</p>
						</div>
					</div>
				</div>

				<div class="col-12 col-sm-4 col-lg-2">
					<div class="card assignment-item">
						<div class="card-body">
							<a href="#" class="card-title">Download</a>
							<p class="card-text">
								Bài tập Download: Áp dụng Cookie, Session <br> Chapter:
								7.1, 7.2, 7.3
							</p>
						</div>
					</div>
				</div>

				<div class="col-12 col-sm-4 col-lg-2">
					<div class="card assignment-item">
						<div class="card-body">
							<a href="#" class="card-title">Bài tập 5</a>
							<p class="card-text">Sử dụng JSP, JavaScript, Jquery,
								Bootstrap,... để thiết kế giao diện Website</p>
						</div>
					</div>
				</div>
			</div>
		</div>


		<section class="container-fluid">
			<div class="member" style="background-color: #fff; margin: 0 20px;">
				<div class="d-flex justify-content-center">
					<div class="col-12 col-sm-8 col-lg-6">
						<!-- Section Heading-->
						<div class="section_heading text-center wow fadeInUp"
							data-wow-delay="0.2s"
							style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
							<h2>
								DANH SÁCH THÀNH VIÊN
							</h2>
							<div class="line"></div>
						</div>
					</div>
				</div>
				<div class="row" style="margin-top:20px;">
					<!-- Single Advisor-->
					<div class="col-12 col-sm-6 col-lg-3">
						<div class="single_advisor_profile wow fadeInUp"
							data-wow-delay="0.2s"
							style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
							<!-- Team Thumb-->
							<div class="advisor_thumb">
								<img
									src="${pageContext.request.contextPath}/assets/img/leecuong.jpg"
									alt="">
								<!-- Social Info-->
								<div class="social-info">
									<a href="#"><i class="fab fa-facebook"></i></a><a href="#"><i
										class="fab fa-twitter"></i></a><a href="#"><i
										class="fab fa-linkedin"></i></a>
								</div>
							</div>
							<!-- Team Details-->
							<div class="single_advisor_details_info">
								<h3>Lê Văn Cường</h3>
								<p class="designation">Founder &amp; CEO</p>
							</div>
						</div>
					</div>
					<!-- Single Advisor-->
					<div class="col-12 col-sm-6 col-lg-3">
						<div class="single_advisor_profile wow fadeInUp"
							data-wow-delay="0.3s"
							style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;">
							<!-- Team Thumb-->
							<div class="advisor_thumb">
								<img
									src="${pageContext.request.contextPath}/assets/img/tranduy.jpg"
									alt="" style="object-fit: contain;">
								<!-- Social Info-->
								<div class="social-info">
									<a href="#"><i class="fab fa-facebook"></i></a><a href="#"><i
										class="fab fa-twitter"></i></a><a href="#"><i
										class="fab fa-linkedin"></i></a>
								</div>
							</div>
							<!-- Team Details-->
							<div class="single_advisor_details_info">
								<h3>Trần Bảo Duy</h3>
								<p class="designation">UI Designer</p>
							</div>
						</div>
					</div>
					<!-- Single Advisor-->
					<div class="col-12 col-sm-6 col-lg-3">
						<div class="single_advisor_profile wow fadeInUp"
							data-wow-delay="0.4s"
							style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
							<!-- Team Thumb-->
							<div class="advisor_thumb">
								<img
									src="${pageContext.request.contextPath}/assets/img/nguyenan.jpg"
									alt="">
								<!-- Social Info-->
								<div class="social-info">
									<a href="#"><i class="fab fa-facebook"></i></a><a href="#"><i
										class="fab fa-twitter"></i></a><a href="#"><i
										class="fab fa-linkedin"></i></a>
								</div>
							</div>
							<!-- Team Details-->
							<div class="single_advisor_details_info">
								<h3>Nguyễn Phúc An</h3>
								<p class="designation">Developer</p>
							</div>
						</div>
					</div>
					<!-- Single Advisor-->
					<div class="col-12 col-sm-6 col-lg-3">
						<div class="single_advisor_profile wow fadeInUp"
							data-wow-delay="0.5s"
							style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">
							<!-- Team Thumb-->
							<div class="advisor_thumb">
								<img
									src="${pageContext.request.contextPath}/assets/img/dangkhoa.png"
									alt="">
								<!-- Social Info-->
								<div class="social-info">
									<a href="#"><i class="fab fa-facebook"></i></a><a href="#"><i
										class="fab fa-twitter"></i></a><a href="#"><i
										class="fab fa-linkedin"></i></a>
								</div>
							</div>
							<!-- Team Details-->
							<div class="single_advisor_details_info">
								<h3>Bành Đăng Khoa</h3>
								<p class="designation">Marketing Manager</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		
	</div>
	<jsp:include page="/common/footer.jsp"></jsp:include>

</body>
</html>
