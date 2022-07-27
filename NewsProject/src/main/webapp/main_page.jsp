<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>MAINPAGE</title>
	<style>
	    body{background: linear-gradient(360deg, rgba(172,203,238,1) 0%, rgba(231,240,253,1) 100%);}
        header{
		  position: fixed;
		  top: 0;
		  left: 0;
		  right: 0;
		  height: 100px;
		  padding: 1rem;
		  font-weight: bold;
		  display: flex;
		  align-items: center;
		  flex-direction: row-reverse;
		  word-spacing: 1.2em;
		}
		nav{
			height: 100px;
			margin-top: 80px;
 			text-align: center;
 			padding: 50px 0 0 0;
 			font-weight: bold;
 			font-size: 30px;
 			word-spacing: 1.2em;
 			text-decoration:none !important;
        }
        a{color : black;text-decoration:none !important;}
		section{padding: 1rem;}
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
<body>

	<header id="header_login">
		<!-- 로그인 아이콘 -->
		<!-- <h2><a href="#" id="login_logo" >로그인</a></h2> -->
		<a href="Login.jsp" data-position="center" id="login_logo">로그인<img src="images/user.png" hspace="15" alt="" width="30px" height="30px" /></a>
		<!-- 검색 아이콘 -->
		<a href="Search.jsp" data-position="center" id="search_logo">검색<img src="images/search.png" hspace="15" alt="" width="30px" height="30px" /></a>
		<!-- <h2><a href="#" id="search_logo">검색</a></h2> -->
	</header>

	<nav>
		<div>	
		<a href="#main_keyword" id="category_new" onclick="keyword()"><b>실시간키워드</b></a>
		<a href="#" id="category_1" onclick="categorys()"><b>카테고리1</b></a>
		<a href="#" id="category_2" onclick="categorys()"><b>카테고리2</b></a>
		<a href="#" id="category_3" onclick="categorys()"><b>카테고리3</b></a>
		</div>
	</nav>
	
	<section>
		<%@ include file="main_slide.jsp" %>
	</section>
	
	
	
	
	
</body>
</html>