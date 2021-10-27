<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     
        <div class="col-sm-12">
          <div class="img-wrap">
              <img src="<c:url value='/assets/img/logo.png' />" alt="" class="img-logo">
          </div> 
        </div>
        <header class="header sticky-top">
          <nav class="navbar navbar-expand-lg navbar-light ">
            <div class="container-fluid">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/home">Trang chủ</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/about">Về chúng tôi</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                      Bài tập
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/EmailListForm">Email List</a></li>
                      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/surveyform">Survey</a></li>
                      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/Dacta">Đặc tả đề tài</a></li>
                      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/listdownload">Download</a></li>
                      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/listitems">Cart</a></li>
                      <li><a class="dropdown-item" href="${pageContext.request.contextPath}/userAdmin">User Admin (Quản lý user)</a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="https://github.com/tranduy26913/web-group2">Source Code</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="https://tuyendung.herokuapp.com/">Đồ án cuối kì</a>
                  </li>
                </ul>
                <div class="nav-animation start-home"></div>
                <form class="d-flex search-top">
                  <input class="form-control me-2 text-search" type="search" placeholder="Tìm kiếm" aria-label="Search">
                  <button class="btn btn-success" style="width: 150px !important;padding: 0 10px;margin: 0 10px;font-size: 1.6rem;" type="submit">Tìm kiếm</button>
                </form>
              </div>
            </div>
          </nav>
        </header>

