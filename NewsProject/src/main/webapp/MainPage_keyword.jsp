<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<link href="./assets/css/main_slide4.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
	<style>
        #header_login1{
		  position: fixed;
		  top: 0;
		  right: 0;
		  height: 100px;
		  padding: 1rem;
		  font-weight: bold;
		  display: flex;
		  align-items: center;
		  flex-direction: row-reverse;
		  word-spacing: 1.2em;
		  letter-spacing: 3px;
		  
		}
		#header_login1 img.a{
			width:30px; 
			height: 30px;
			margin: 0 15px 0 10px;
		}
		#header_login2 img{
			margin: 15px 0 0 0;
			width:  350px; 
			height: 100%;
			top:  0;
			left: 0;
			position: relative;
		}
		nav{
			height: 100px;
			margin-top: 40px;
 			text-align: center;
 			font-weight: bold;
 			font-size: 30px;
 			word-spacing: 1.2em;
 			text-decoration:none !important;
        }
        a{color : black;text-decoration:none !important;}
		section{padding: 0.1rem;}
        .mainSlide img{width: 550px;height: 600px;}
        #main_keyword{
		  	width: 100%;
            height: 697px;
            left: 0;
		    right: 0;
            background: linear-gradient(90deg, rgba(137,207,240,1) 0%, rgba(108,180,238,1) 50%, rgba(0,127,255,1) 100%);
            display : none;
        }

    </style>
</head>
<body bgcolor="#F0F8FF" >
	<%
		//session 값 가지고 오기
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		// 메인페이지에서 세션이 필요한 것들??
			
	
	%>

<!-- 	<header id="header_login"> -->
	<div id="header_login1">
	
			<!-- 로그인 아이콘 -->
			<!-- <h2><a href="#" id="login_logo" >로그인</a></h2> -->
			<a href="Login.jsp" data-position="center" id="login_logo">로그인/회원가입<img src="images/user.png" alt="" class="a"/></a>
			<!-- 검색 아이콘 -->
			<a href="Search.jsp" data-position="center" id="search_logo">검색<img src="images/search.png" alt="" class="a" /></a>
			<!-- <h2><a href="#" id="search_logo">검색</a></h2> -->
	<!-- 	</header> -->
	</div>
	<!-- 로고 아이콘 -->
	<div id="header_login2">
		<a href="MainPage_cate1.jsp" data-position="center" id="News_Logo" ><img src="images/NEWSLOGO2.png" alt=""></a>
	</div>
	
	<nav>
		<div>	
		<a href="MainPage_keyword.jsp" id="category_new"><b>실시간키워드</b></a>
		<a href="MainPage_cate1.jsp" id="category_1"><b>카테고리1</b></a>
		<a href="MainPage_cate2.jsp" id="category_2"><b>카테고리2</b></a>
		<a href="MainPage_cate3.jsp" id="category_3"><b>카테고리3</b></a>
		</div>
	</nav>
	
	<section>
		<div class="section">
			
		
			<div class="slidewrap">
				
				<ul class="slidelist">
					<!-- 슬라이드 영역 -->
					<li class="slideitem">
						<a>
							<div class="textbox">
								<h3>키워드 슬라이드</h3>
								<p>키워드 슬라이드 입니다.</p>
							</div>
							<img src="images/pic_01.jpg">
						</a>
					</li>
					
		
					
				</ul>
				
			</div>
		
			
		</div>
	</section>
	
	
	
	
	
</body>
</html>