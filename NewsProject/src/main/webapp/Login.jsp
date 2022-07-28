<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loginpage</title>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./assets/css/login.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
</head>
<body>

	<div class="wrap">
        <div class="login">
            <h2>Login</h2>
            <div class="login_id">
                <h4>ID</h4>
	<form action="LoginCon" method="post">
                <input type="id" name="mem_id"  placeholder="ID">
            </div>
            <div class="login_pw">
                <h4>Password</h4>
                <input type="password" name="mem_pw" placeholder="Password">
            </div>
            <div class="login_etc">
                <div class="checkbox">
                <input type="checkbox" name="" id=""> Remember Me?
                </div>
                <div class="forgot_pw">
                <a href="">Forgot Password?</a>
            </div>
            </div>
            <div class="submit">
                <a href="MainPage.jsp"><input type="submit" value="submit"></a>
            </div>
            <button type="button" onclick="location.href='Join.jsp'">sign up</button>
            
	</form>
                
        </div>
    </div>
</body>
</html>