<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <footer class="text-center text-lg-start bg-light" style="font-size: 1.6rem;">
    <!-- Section: Social media -->
    <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
      <!-- Left -->
      <div class="me-5 d-none d-lg-block">
        <span>Liên hệ với chúng tôi qua các mạng xã hội:</span>
      </div>
      <!-- Left -->

      <!-- Right -->
      <div>
        <a href="" class="me-4 social-item">
          <i class="fab fa-facebook-f icon-social"></i>
        </a>
        <a href="" class="me-4 social-item">
          <i class="fab fa-twitter icon-social"></i>
        </a>
        <a href="" class="me-4 social-item">
          <i class="fab fa-google icon-social"></i>
        </a>
        <a href="" class="me-4 social-item">
          <i class="fab fa-instagram icon-social"></i>
        </a>
        <a href="" class="me-4 social-item">
          <i class="fab fa-linkedin icon-social"></i>
        </a>
        <a href="" class="me-4 social-item">
          <i class="fab fa-github icon-social"></i>
        </a>
      </div>
      <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section class="">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <!-- Content -->
            <h6 class="text-uppercase fw-bold mb-4" style="font-size: 2rem;">
              <i class="fas fa-gem me-3"></i>Lập trình WEB
            </h6>
            <p>
              Website được thiết kế để thực hành các bài tập và lưu lại kết quả làm việc của nhóm
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4" style="font-size: 2rem;">
              Sản phẩm
            </h6>
            <p>
              <a href="#!" class="text-reset">Angular</a>
            </p>
            <p>
              <a href="#!" class="text-reset">React</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Vue</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Laravel</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4" style="font-size: 2rem;">
              Bài tập
            </h6>
            <p>
              <a href="${pageContext.request.contextPath}/EmailListForm" class="text-reset">Email List</a>
            </p>
            <p>
              <a href="${pageContext.request.contextPath}/surveyform" class="text-reset">Survey</a>
            </p>
            <p>
              <a href="${pageContext.request.contextPath}/listitems" class="text-reset">Cart</a>
            </p>
            <p>
              <a href="${pageContext.request.contextPath}/Dacta" class="text-reset">Đặc tả đề tài</a>
            </p>
            <p>
              <a href="${pageContext.request.contextPath}/listdownload" class="text-reset">Download</a>
            </p>
            <p>
              <a href="${pageContext.request.contextPath}/userAdmin" class="text-reset">User Admin (Quản lý User)</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4" style="font-size: 2rem;">
              Liên hệ
            </h6>
            <p><i class="fas fa-home me-3"></i> Trường ĐH Sư phạm Kỹ thuật TPHCM</p>
            <p>
              <i class="fas fa-envelope me-3"></i>
              info@example.com
            </p>
            <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
            <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->
    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <!-- Copyright -->
    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
      <%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
      <%
      GregorianCalendar currentDate=new GregorianCalendar();
      int currentYear=currentDate.get(Calendar.YEAR);
      %>
       @<%=currentYear %> Copyright:
      <a class="text-reset fw-bold" href="${pageContext.request.contextPath}">${pageContext.request.contextPath}</a>
    </div>
    <!-- Copyright -->
  </footer>
  <!-- Footer -->