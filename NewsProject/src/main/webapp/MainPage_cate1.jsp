<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<link href="./assets/css/main_slide1.css" rel="stylesheet" type="text/css">
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
			<%if(loginMember==null) { %>
			<a href="Login.jsp" data-position="center" id="login_logo">로그인/회원가입<img src="images/user.png" alt="" class="a"/></a>
			<%} else{ %>
			<a href="LogoutCon">로그아웃<img src="images/user.png" alt="" class="a"/></a>
			<%} %>
			
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
			<input type="radio" name="slide" id="slide01" checked>
			<input type="radio" name="slide" id="slide02">
			<input type="radio" name="slide" id="slide03">
			<input type="radio" name="slide" id="slide04">
			<input type="radio" name="slide" id="slide05">
			<input type="radio" name="slide" id="slide06">
			<input type="radio" name="slide" id="slide07">
			<input type="radio" name="slide" id="slide08">
			<input type="radio" name="slide" id="slide09">
			<input type="radio" name="slide" id="slide10">
		
			<div class="slidewrap">
				
				<ul class="slidelist">
					<!-- 슬라이드 영역 -->
					<li class="slideitem">
						<a>
							<div class="textbox">
								<h3>1번째 슬라이드</h3>
								<p>1번째 슬라이드 입니다.</p>
							</div>
							<img src="images/pic_01.jpg">
						</a>
					</li>
					<li class="slideitem">
						<a>
							
							<div class="textbox">
								<h3>2번째 슬라이드</h3>
								<p>2번째 슬라이드 입니다.</p>
							</div>
							<img src="images/pic_02.jpg">
						</a>
					</li>
					<li class="slideitem">
						<a>
							
							<div class="textbox">
								<h3>3번째 슬라이드</h3>
								<p>3번째 슬라이드 입니다.</p>
							</div>
							<img src="images/pic_03.jpg">
						</a>
					</li class="slideitem">
					<li class="slideitem">
						<a>
							
							<div class="textbox">
								<h3>4번째 슬라이드</h3>
								<p>4번째 슬라이드 입니다.</p>
							</div>
							<img src="images/pic_04.jpg">
						</a>
					</li class="slideitem">
					<li class="slideitem">
						<a>
							
							<div class="textbox">
								<h3>5번째 슬라이드</h3>
								<p>5번째 슬라이드 입니다.</p>
							</div>
							<img src="images/pic_05.jpg">
						</a>
					</li class="slideitem">
					<li class="slideitem">
						<a>
							
							<div class="textbox">
								<h3>6번째 슬라이드</h3>
								<p>6번째 슬라이드 입니다.</p>
							</div>
							<img src="images/pic_01.jpg">
						</a>
					</li class="slideitem">
					<li class="slideitem">
						<a>
							
							<div class="textbox">
								<h3>7번째 슬라이드</h3>
								<p>7번째 슬라이드 입니다.</p>
							</div>
							<img src="images/pic_02.jpg">
						</a>
					</li class="slideitem">
					<li class="slideitem">
						<a>
							
							<div class="textbox">
								<h3>8번째 슬라이드</h3>
								<p>8번째 슬라이드 입니다.</p>
							</div>
							<img src="images/pic_03.jpg">
						</a>
					</li class="slideitem">
					<li class="slideitem">
						<a>
							
							<div class="textbox">
								<h3>9번째 슬라이드</h3>
								<p>9번째 슬라이드 입니다.</p>
							</div>
							<img src="images/pic_04.jpg">
						</a>
					</li class="slideitem">
					<li class="slideitem">
						<a>
							
							<div class="textbox">
								<h3>10번째 슬라이드</h3>
								<p>10번째 슬라이드 입니다.</p>
							</div>
							<img src="images/pic_05.jpg">
						</a>
					</li class="slideitem">
		
					<!-- 좌,우 슬라이드 버튼 -->
					<div class="slide-control">
						<div class="control01">
							<label for="slide10" class="left"></label>
							<label for="slide02" class="right"></label>
						</div>
						<div class="control02">
							<label for="slide01" class="left"></label>
							<label for="slide03" class="right"></label>
						</div>
						<div class="control03">
							<label for="slide02" class="left"></label>
							<label for="slide04" class="right"></label>
						</div>
						<div class="control04">
							<label for="slide03" class="left"></label>
							<label for="slide05" class="right"></label>
						</div>
						<div class="control05">
							<label for="slide04" class="left"></label>
							<label for="slide06" class="right"></label>
						</div>
						<div class="control06">
							<label for="slide05" class="left"></label>
							<label for="slide07" class="right"></label>
						</div>
						<div class="control07">
							<label for="slide06" class="left"></label>
							<label for="slide08" class="right"></label>
						</div>
						<div class="control08">
							<label for="slide07" class="left"></label>
							<label for="slide09" class="right"></label>
						</div>
						<div class="control09">
							<label for="slide08" class="left"></label>
							<label for="slide10" class="right"></label>
						</div>
						<div class="control10">
							<label for="slide09" class="left"></label>
							<label for="slide01" class="right"></label>
						</div>
					</div>
		
				</ul>
				<!-- 페이징 -->
				<ul class="slide-pagelist">
					<li><label for="slide01"></label></li>
					<li><label for="slide02"></label></li>
					<li><label for="slide03"></label></li>
					<li><label for="slide04"></label></li>
					<li><label for="slide05"></label></li>
					<li><label for="slide06"></label></li>
					<li><label for="slide07"></label></li>
					<li><label for="slide08"></label></li>
					<li><label for="slide09"></label></li>
					<li><label for="slide10"></label></li>
				</ul>
			</div>
		
			
		</div>
	</section>
	
	
	
	
	
</body>
</html>