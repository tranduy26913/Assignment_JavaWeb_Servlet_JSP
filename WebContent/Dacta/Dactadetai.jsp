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
<title>Check out</title>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,100&display=swap&subset=vietnamese"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/main.css'/>">
<style>
		h1 {
			display:block;
			padding:20px 0;
		}
        p {
            font-size: 1.5rem;
            color: #000;
            margin-left: 16px;
        }
        h2 {
            font-size: 1.8rem;
        }
        .body-content {
            margin: 0px 20px;
            padding: 20px 0 40px 0;
        }
        li {
            font-size: 1.4rem;
        }
        .content-wrap {
            display: block;background-color: #fff;margin:0 40px;min-height:inherit;
        }
    </style>
</head>
<body style="background: #eee; position: relative;">

	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<div class="app">
    <div class="content-wrap">
        <div class="body-content" style="display: block;">
            <h1>Đặc tả đề tài: Xây dựng ứng dụng Website Tuyển dụng nhân sự</h1>
            <h2>A. Giới thiệu</h2>
            <p>Ngày nay nhu cầu việc làm ngày càng lớn, tuy nhiên việc các đơn vị tuyển dụng việc làm cũng như các bên có nhu cầu việc làm lại gặp không ít khó khăn trong việc tiếp cận với nhau.</p><br>
            <p>Nắm bắt được xu hướng trên, ứng dụng Website Tuyển dụng nhân sự  với mục tiêu hướng đến sự đơn giản, tiện dụng, dễ cài đặt và thao tác cho người sử dụng. Đồng thời nhấn mạnh tính hiện đại, tinh tế trong việc trải nghiệm người dùng, trên hết là những tính năng cần thiết nhất của công việc quản lý. Giúp bên tìm việc và bên tuyển dụng dễ dàng tiếp cận với nhau giúp giải phóng một lượng lớn lao động cũng như giúp các đơn vị tuyển dụng có được một lực lượng lao động chất lượng</p><br>
            <h2>B. Các trang web tham khảo</h2>
            <h3>1. Các trang web trong nước</h3>
            <ul>
                <li>IT Tìm việc: https://itviec.com/</li>
                <li>TopDev: https://topdev.vn/</li>
                <li>TopCV: https://www.topcv.vn/co-viec-sieu-toc</li>
            </ul>
            <h3>2. Các trang web ngoài nước</h3>
            <ul>
                <li>LinkedIn: https://www.linkedin.com/</li>
                <li>Indeed: https://www.indeed.com/recruitment</li>
                <li>Glassdoor: https://www.glassdoor.com/member/home/index.htm</li>
                <li>Snagajob: https://www.snagajob.com/</li>
            </ul>
            <h2>C. Các yêu cầu</h2>
            <h3>1. Hiển thị thông tin đối tượng một cách trực quan.</h3>
            <h3>2. Phân quyền đăng nhập:</h3>
            <h3>3. Các module chính</h3>
            <p>Module đối tác: Module này sẽ giúp đăng tải thông tin của bên cần tuyển ứng viên và các nội dung liên quan</p>
            <p>Phân loại việc làm (chuyên về mảng IT)</p>
            <ul>
                <li>Theo ngôn ngữ lập trình: Java, Python, .Net, F#, ….. </li>
                <li>Theo tầng: UI/UX, DB</li>
                <li>Theo chuyên môn: Web Developer, Windows Application Developer</li>
                <li>Theo mức lương</li>
                <li>Xếp loại (các công việc hot, được ứng tuyển nhiều,....) </li>
            </ul>
            <p>Module việc làm: Hiển thị danh sách các công việc đã đăng</p>
            <p>Module tìm kiếm: Giúp các ứng viên và nhà tuyển dụng tìm kiếm thông tin trên web bằng các từ khóa</p>
            <p>Module liên hệ trực tuyến: Giúp người dùng có thể dễ dàng gửi yêu cầu và CV của mình đến bên công ty mà mình muốn ứng tuyển</p>
            <p>Module dành cho bên cần ứng viên. Gồm các chức năng như: đăng ký thành viên tuyển dụng, Chỉnh sửa thông tin đăng tuyển, quản lý hồ sơ</p>
            <p>Module dành cho ứng viên tìm việc: Cần có các chức năng như: đăng ký thành viên, chỉnh sửa hồ sơ, xem hồ sơ...</p>
            <h3>4. Hướng phát triển</h3>
            <p>Cải tiến, phát triển các chức năng hiện tại đồng thời bổ sung thêm các module:</p>
            <ul>
                <li>Module ngôn ngữ: (Nâng cao)Tích hợp nhiều loại ngôn ngữ nhằm tiếp cận được với nhiều ứng viên</li>
                <li>Module tin tức: (Nâng cao) Cho phép đăng tải các tin tức, sự kiện hoặc thông tin về cẩm nang làm các hoạt động, các lĩnh vực tìm kiếm công việc</li>
                <li>Module quảng cáo (Nâng cao)</li>
                <li>Dịch vụ Mail (Nâng cao)</li>
                <li>Contact us (Nâng cao)</li>
            </ul>
            <h3>5. Quản lý các đối tượng như: ứng viên, nhà tuyển dụng, cv, công việc</h3>
            <ul>
                <li>Xem</li>
                <li>Thêm</li>
                <li>Cập nhật</li>
                <li>Xoá</li>
            </ul>
            <h3>6. Hoạt động tính toán</h3>
            <h3>7. Giao diện: Có tính thân thiện với người dùng, bắt mắt</h3>
            <h3>8. Dễ dàng cài đặt</h3>
            <h3>9. Có tính ứng dụng với thực tế.</h3>
        </div>
        
    </div>
  </div>


   <jsp:include page="../common/footer.jsp"></jsp:include>

	
</body>
</html>