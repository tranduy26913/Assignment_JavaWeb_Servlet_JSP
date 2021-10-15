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
<title>Survey</title>
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
			<form class="survey" action="survey" method="post" style="background-color:#fff;border-radius:12px;border:1px solid #aaa;padding:20px;margin:20px 0px;">
            <h1 style="text-align: center;margin-bottom:20px;">Survey</h1>
            <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
            
            <h2>Your information:</h2>
            <label>First Name</label>
            <input type="text" name="firstName" required><br>
            <label>Last Name</label>
            <input type="text" name="lastName" required><br>
            <label>Email</label>
            <input type="email" name="email" required><br>

            <h2>How did you hear about us?</h2>
            <p><input type=radio name="heardFrom" value="Search Engine">Search engine
               <input type=radio name="heardFrom" value="Friend">Word of mouth
               <input type=radio name="heardFrom" value="Other">Other</p>

            <h2>Would you like to receive announcements about new CDs and special offers?</h2>
            <p><input type="checkbox" name="wantsUpdates" checked>YES, I'd like that.</p>

            <p>Please contact me by:
                <select name="contactVia">
                    <option value="Both" selected>Email or postal mail</option>
                    <option value="Email">Email only</option>
                    <option value="Postal Mail">Postal mail only</option>
                </select>
            </p>

            <div class="btn-submit">
					<input type="submit" value="Submit" id="submit"><br>
				</div>
        </form>
		</div>
		</section>
	</div>


   <jsp:include page="../common/footer.jsp"></jsp:include>

	
</body>
</html>