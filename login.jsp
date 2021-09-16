<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<div class="message">Sign up to get more</div>
<div class="form-control-signup">
    <form action="" method="POST">
        <div class="form-group">
            <label for="username">User name:</label>
            <input type="text" class="form-control" placeholder="Enter Username" id="username" required>
        </div>
        <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" placeholder="Enter password" id="pwd" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" placeholder="Enter Email" id="email" required>
        </div>
        <button type="submit" class="btn btn-primary">Sign Up</button>
    </form>
</div>
</body>
</html>