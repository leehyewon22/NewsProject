<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<!-- <link rel="stylesheet" href="nicepage.css" media="screen"> -->
<link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="About.css" media="screen">
<meta name="generator" content="Nicepage 4.15.8, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">


<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
		}
		</script>

			<style >
						
						.htag{
							font-family: 'Noto Sans KR', sans-serif;
						}
					
					
						.ptag{
							font-family: 'Noto Sans KR', sans-serif;
						}
						
						/* 
						.logo2{
							font-family: 'Jua', sans-serif;

						} */
						.hh2 {
							font-family: 'Jua', sans-serif;
						}
						
			</style>



<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="About">
<meta property="og:type" content="website">


<script>
	function searchClick() {
		var searchText = document.getElementById("searchKeyword");
		if (searchText != null) {
			/* alert("검색성공!! = "+searchText.value); */
			return true
		} else {
			return false
		}
	}
</script>
</head>

</head>
<body class="is-preload">
	<%
	//session 값 가지고 오기
	Member loginMember = (Member) session.getAttribute("loginMember");
	// 메인페이지에서 세션이 필요한 것들??
	%>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- 회원가입, 로그인/로그아웃 -->
		<div id="UserBtn">
			<%
			if (loginMember == null) {
			%>
			<input type="button" onclick="location.href='Join.jsp'"
				id="button_Join" value="회원가입"> <input type="button"
				onclick="location.href='Login.jsp'" id="button_Login" value="로그인">
			<%
			} else {
			%>
			<input type="button" onclick="location.href='LogoutCon'"
				id="button_Logout" value="로그아웃">
			<%
			}
			%>
		</div>

		<!-- Header -->
		<header id="header" class="alt">
			<span class="logo"><img src="images/NEWSLOGO2.png" alt="" /></span>
			<h1 class="hh2">'닉네임'님과 함께 할 뉴스</h1>
			<!-- 검색창 -->
			<form action="http://127.0.0.1:5000" method="get"
				class="u-border-1 u-border-grey-15 u-search u-search-right u-search-1" style="background: white;border-radius: 10px;">
				<button class="u-search-button" type="submit">
					<div
						class="u-file-icon u-search-icon u-text-grey-40 u-search-icon-1"
						style="display: flex; justify-content: center;">
						<div>Search</div>
						<img src="images/searchIcon.png" alt="">
					</div>
				</button>
				<input type="search" name="search" id="search"
					onclick="searchClick();" autocomplete="off" required>
			</form>
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li class="hh2"><a href="#intro" class="active">RealTime Keyword</a></li>
				<li class="hh2"><a href="#first">First category</a></li>
				<li class="hh2"><a href="#second">Second category</a></li>
				<li class="hh2"><a href="#cta">Third category</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<section id="intro" class="main">
				<header class="major">
					<h2 class="hh2">RealTime Keyword</h2>
				</header>
				<div class="spotlight">
					<img src="images/pic01.jpg" class="spotlightimg">
				</div>
			</section>

			<!-- First Section -->
			<section id="first" class="main special">
				<header class="major">
					<h2>First Category</h2>
				</header>
				<form action="#" method="post">
					<div class="section" id="section1">
						<input type="radio" name="slide" id="slide0" checked>
						<script>
							for (let i = 1; i <= 9; i++) {
								document.write('<input type="radio" name="slide" id="slide'+i+'">');
							}
						</script>

						<div class="slidewrap s1" id="slidewrap1">

							<ul class="slidelist s1" id="slidelist1">
								<!-- 슬라이드 영역 -->
								<script>
									for (let i = 0; i < 10; i++) {
										document.write('<li class="slideitem" id="slideitem'+i+'">');
										document.write('<a>');
										document.write('<div class="textbox">');
										document.write('<h3 class="htag">' + i+ '번째 슬라이드</h3>');
										document.write('<p class="ptag">' + i+ '번째 슬라이드 입니다.</p>');
										document.write('</div>');
										document.write('<img src="images/bg/pic_'+i+'.jpg">');
										document.write('</a>');
										document.write('</li>');
									}
								</script>

								<!-- 좌,우 슬라이드 버튼 -->
								<div class="slide-control" id="slide-control1">
									<div class="control01">
										<label for="slide9" class="left"></label>
										<label for="slide1" class="right"></label>
									</div>
									<div class="control02">
										<label for="slide0" class="left"></label>
										<label for="slide2" class="right"></label>
									</div>
									<div class="control03">
										<label for="slide1" class="left"></label>
										<label for="slide3" class="right"></label>
									</div>
									<div class="control04">
										<label for="slide2" class="left"></label>
										<label for="slide4" class="right"></label>
									</div>
									<div class="control05">
										<label for="slide3" class="left"></label>
										<label for="slide5" class="right"></label>
									</div>
									<div class="control06">
										<label for="slide4" class="left"></label>
										<label for="slide6" class="right"></label>
									</div>
									<div class="control07">
										<label for="slide5" class="left"></label>
										<label for="slide7" class="right"></label>
									</div>
									<div class="control08">
										<label for="slide6" class="left"></label>
										<label for="slide8" class="right"></label>
									</div>
									<div class="control09">
										<label for="slide7" class="left"></label>
										<label for="slide9" class="right"></label>
									</div>
									<div class="control010">
										<label for="slide8" class="left"></label>
										<label for="slide0" class="right"></label>
									</div>


								</div>

							</ul>
							<!-- 페이징 -->
							<ul class="slide-pagelist" id="slide-pagelist1">
								<li><label for="slide0"></label></li>
								<li><label for="slide1"></label></li>
								<li><label for="slide2"></label></li>
								<li><label for="slide3"></label></li>
								<li><label for="slide4"></label></li>
								<li><label for="slide5"></label></li>
								<li><label for="slide6"></label></li>
								<li><label for="slide7"></label></li>
								<li><label for="slide8"></label></li>
								<li><label for="slide9"></label></li>

							</ul>
						</div>
					</div>
				</form>
			</section>

			<!-- Second Category -->
			<section id="second" class="main special">
				<header class="major">
					<h2 class="hh2">Second Category</h2>
				</header>
				<form action="#" method="post">

					<div class="section" id="section2">
						<input type="radio" name="slide" id="slide10" checked>
						<script>
							for (let i = 1; i <= 9; i++) {
								document
										.write('<input type="radio" name="slide" id="slide1'+i+'">');
							}
						</script>

						<div class="slidewrap" id="slidewrap2">

							<ul class="slidelist" id="slidelist2">
								<!-- 슬라이드 영역 -->
								<script>
									for (let i = 0; i < 10; i++) {
										document.write('<li class="slideitem" id="slideitem1"'+i+'>');
										document.write('<a>');
										document.write('<div class="textbox">');
										document.write('<h3 class="htag">1' + i+ '번째 슬라이드</h3>');
										document.write('<p class="ptag">1' + i+ '번째 슬라이드 입니다.</p>');
										document.write('</div>');
										document.write('<img src="images/bg/pic_'+i+'.jpg">');
										document.write('</a>');
										document.write('</li>');
									}
								</script>

								<!-- 좌,우 슬라이드 버튼 -->
								<div class="slide-control" id="slide-control2">
									<div class="control01">
										<label for="slide19" class="left"></label>
										<label for="slide11" class="right"></label>
									</div>
									<div class="control02">
										<label for="slide10" class="left"></label>
										<label for="slide12" class="right"></label>
									</div>
									<div class="control03">
										<label for="slide11" class="left"></label>
										<label for="slide13" class="right"></label>
									</div>
									<div class="control04">
										<label for="slide12" class="left"></label>
										<label for="slide14" class="right"></label>
									</div>
									<div class="control05">
										<label for="slide13" class="left"></label>
										<label for="slide15" class="right"></label>
									</div>
									<div class="control06">
										<label for="slide14" class="left"></label>
										<label for="slide16" class="right"></label>
									</div>
									<div class="control07">
										<label for="slide15" class="left"></label>
										<label for="slide17" class="right"></label>
									</div>
									<div class="control08">
										<label for="slide16" class="left"></label>
										<label for="slide18" class="right"></label>
									</div>
									<div class="control09">
										<label for="slide17" class="left"></label>
										<label for="slide19" class="right"></label>
									</div>
									<div class="control010">
										<label for="slide18" class="left"></label>
										<label for="slide10" class="right"></label>
									</div>
									</div>
							</ul>
							<!-- 페이징 -->
							<ul class="slide-pagelist" id="slide-pagelist2">
								<li><label for="slide10"></label></li>
								<li><label for="slide11"></label></li>
								<li><label for="slide12"></label></li>
								<li><label for="slide13"></label></li>
								<li><label for="slide14"></label></li>
								<li><label for="slide15"></label></li>
								<li><label for="slide16"></label></li>
								<li><label for="slide17"></label></li>
								<li><label for="slide18"></label></li>
								<li><label for="slide19"></label></li>

							</ul>
						</div>


					</div>
				</form>
			</section>

			<!--Third Category -->
			<section id="cta" class="main special">
				<header class="major">
					<h2 class="hh2">Third Category</h2>
				<form action="#" method="post">

					<div class="section" id="section3">
						<input type="radio" name="slide" id="slide20" checked>
						<script>
							for (let i = 1; i <= 9; i++) {
								document.write('<input type="radio" name="slide" id="slide2'+i+'">');
							}
						</script>

						<div class="slidewrap" id="slidewrap3">

							<ul class="slidelist" id="slidelist3">
								<!-- 슬라이드 영역 -->
								<script>
									for (let i = 0; i < 10; i++) {
										document.write('<li class="slideitem">');
										document.write('<a>');
										document.write('<div class="textbox">');
										document.write('<h3 class="htag">2' + i+ '번째 슬라이드</h3>');
										document.write('<p class="ptag">2' + i+ '번째 슬라이드 입니다.</p>');
										document.write('</div>');
										document.write('<img src="images/bg/pic_'+i+'.jpg">');
										document.write('</a>');
										document.write('</li>');
									}
								</script>

								<!-- 좌,우 슬라이드 버튼 -->
								<div class="slide-control" id="slide-control3">
									<div class="control01">
										<label for="slide29" class="left"></label>
										<label for="slide21" class="right"></label>
									</div>
									<div class="control02">
										<label for="slide20" class="left"></label>
										<label for="slide22" class="right"></label>
									</div>
									<div class="control03">
										<label for="slide21" class="left"></label>
										<label for="slide23" class="right"></label>
									</div>
									<div class="control04">
										<label for="slide22" class="left"></label>
										<label for="slide24" class="right"></label>
									</div>
									<div class="control05">
										<label for="slide23" class="left"></label>
										<label for="slide25" class="right"></label>
									</div>
									<div class="control06">
										<label for="slide24" class="left"></label>
										<label for="slide26" class="right"></label>
									</div>
									<div class="control07">
										<label for="slide25" class="left"></label>
										<label for="slide27" class="right"></label>
									</div>
									<div class="control08">
										<label for="slide26" class="left"></label>
										<label for="slide28" class="right"></label>
									</div>
									<div class="control09">
										<label for="slide27" class="left"></label>
										<label for="slide29" class="right"></label>
									</div>
									<div class="control010">
										<label for="slide28" class="left"></label>
										<label for="slide20" class="right"></label>
									</div>
								</div>
							</ul>
							<!-- 페이징 -->
							<ul class="slide-pagelist" id="slide-pagelist3">
								<li><label for="slide20"></label></li>
								<li><label for="slide21"></label></li>
								<li><label for="slide22"></label></li>
								<li><label for="slide23"></label></li>
								<li><label for="slide24"></label></li>
								<li><label for="slide25"></label></li>
								<li><label for="slide26"></label></li>
								<li><label for="slide27"></label></li>
								<li><label for="slide28"></label></li>
								<li><label for="slide29"></label></li>

							</ul>
						</div>


					</div>
				</form>
			</section>

		</div>

		<!-- Footer -->
		<footer id="footer">


		</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script class="u-script" type="text/javascript"
		src="assets/js/jquery.js" "="" defer=""></script>
	<script class="u-script" type="text/javascript"
		src="assets/js/nicepage.js" "="" defer=""></script>

</body>
</html>