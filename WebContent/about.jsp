<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/png" href="<c:url value='/assets/img/favicon.ico'/>">
<title>Đồ án Lập trình WEB</title>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,100&display=swap&subset=vietnamese"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/main.css'/>">

</head>
<body style="background: #eee; position: relative;">

	<jsp:include page="/common/header.jsp"></jsp:include>
	

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
