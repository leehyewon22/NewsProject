<%@page import="com.smhrd.model.Member"%>
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
	
	<style type="text/css">
		#header_login2 img{
			margin: 10px 0 0 0;
			width:  350px; 
			height: 80%;
			top:  -580%;
			position: relative;
		}
		
		#login_form{
			margin: 100px 0 0 100px;
			width: 100%;
			position: relative;
		}
		#login_title{
			align-center : center; 
			width: 100%;
			position: relative;
		}
		#login_title{
			top: -30px;
			left:190px;
		}
		.forgot_pw{
			padding: 10px;
		    width: 80%;
		    font-size: 14px;
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		    font-weight: bold;
		}
		
		#pp{
			width: 80%;
			height:8px;
			font-size: 12px;
			margin-left: 380px;
			font-weight: bold;
			
		}
		
	</style>
	
	<script>

		$(document).on('click','#forgot',()=>{
			$('#pp').text('😜왕바보😜');
			$('#forgot').text('Forgot Password?');
			$('#forgot').attr("id","aa");
		});
		$(document).on('click','#aa',()=>{
			$('#pp').text(' ');
			$('#aa').attr("id","forgot");
		});
	
	</script>
	
</head>
<body>

<%
		Member loginMember = (Member)session.getAttribute("loginMember");
		
	%>
	
	<% if(loginMember==null){%>
			<script>
			
		     $(document).on('click','#sub',()=>{
		    	 alert('😵로그인 실패하셨습니다.😵')
		       })
			</script>
		<%}%>
		<% if(loginMember!=null){%>
		<script>
				$(document).on('click','#sub',()=>{
				    	 alert('🥳로그인 성공하셨습니다.🥳')
				      })
		</script>
		<% }%>


	<div class="wrap">
        <div class="login">
	<form action="LoginCon" method="post" id="login_form">
            <h2 id="login_title">Login</h2>
            <div class="login_id">
                <h4>ID</h4>
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
                <a href="#" id="forgot">Forgot Password?</a>
            </div>
    
			<div id="pp"> 
			</div>
            
            
            <div class="submit">
                <a href="MainPage.jsp"><input type="submit" value="submit" style="float: right;" id="sub"></a>
	            <button type="button" style="float: right;" onclick="location.href='Join.jsp'">sign up</button>
            </div>
            
	</form>
	
	<!-- 로고 아이콘 -->
	<div id="header_login2">
		<a href="MainPage.jsp" data-position="center" id="News_Logo" ><img src="images/NEWSLOGO2.png" alt=""></a>
	</div>
	
                
        </div>
    </div>
</body>
</html>