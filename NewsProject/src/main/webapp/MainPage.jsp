<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.CategoryDAO"%>
<%@page import="com.smhrd.model.Category"%>
<%@page import="com.smhrd.model.ShortDAO"%>
<%@page import="com.smhrd.model.Short"%>
<%@page import="java.util.List"%>
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

<style>
h1#typing-txt{
position: relative;
display: inline-block;
overflow: hidden;
/* height: 25px; */
/*  animation-delay : -5s; */
animation : typingAni 3.5s steps(300,end) 1; 
}
h1#typing-txt::after{
position: absolute; 
display: block;
content: "";
/* animation : cursor 4s step-end infinite; */
}
@keyframes typingAni {
0%{width:0%}
100%{width: 500px};
}
/* @keyframes cursor{
0%{opacity:0;}
50%{opacity:1;}
100%{opacity:0;}
} */
</style>

</head>
<body class="is-preload">
	
	<%
	//session 값 가지고 오기
	Member loginMember = (Member)session.getAttribute("loginMember");

	
	// 메인페이지에서 세션이 필요한 것들??
			
	List<Short> list1 = null;
	List<Short> list2 = null;
	List<Short> list3 = null;
	String cateName1 = ""; 
	String cateName2 = ""; 
	String cateName3 = ""; 
		
	if(loginMember!=null){
		
		ShortDAO dao1 = new ShortDAO();
		ShortDAO dao2 = new ShortDAO();
		ShortDAO dao3 = new ShortDAO();
		
		list1 = dao1.selectAllshorts(loginMember.getCat_seq());
		list2 = dao2.selectAllshorts(loginMember.getCat_seq2());
		list3 = dao3.selectAllshorts(loginMember.getCat_seq3());
		
		
		CategoryDAO cdao1 = new CategoryDAO();
		CategoryDAO cdao2 = new CategoryDAO();
		CategoryDAO cdao3 = new CategoryDAO();
		
		cateName1 = cdao1.selectCateName(loginMember.getCat_seq());
 		cateName2 = cdao2.selectCateName(loginMember.getCat_seq2());
		cateName3 = cdao3.selectCateName(loginMember.getCat_seq3()); 
	}
	
		
		/* System.out.println(loginMember.getCat_seq());
 		System.out.println(loginMember.getCat_seq2());
		System.out.println(loginMember.getCat_seq3());  */
		
			
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
							<%
								if(loginMember!=null){%>
								<h1 class=hh2><%=loginMember.getMem_name() %>님과 함께 할 뉴스</h1>
								<%} else {%>
								<h1 class="hh2" id="typing-txt" style="color: #DAE5FE">WELCOME</h1>
								<!-- <h1 id="typing"></h1> -->
							<%} %>
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
				<li><a href="#intro" class="active">RealTime Keyword</a></li>
				
				<%if(loginMember!=null){ %>
				<li><a href="#first"><%=cateName1 %></a></li>
				<li><a href="#second"><%=cateName2 %></a></li>
				<li><a href="#cta"><%=cateName3 %></a></li>
				<%} %>
				
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
<%if(loginMember!=null){ %>
			<!-- First Section -->
			<section id="first" class="main special">
				<header class="major">
					<h2 class="hh2"><%=cateName1 %></h2>
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
								<%	int i=0;
									for(Short s:list1){
										i++;%>
										<li class="slideitem" id="slideitem<%=i-1 %>">
										<a>
										<div class="textbox">
										<h3 class="htag"><%=s.getNews_title()%></h3>
										<div class="short"><p id="ptag1"><%=s.getNews_short() %></p></div>
										<!-- 카테고리 바뀔 때마다 footer, div, btnFade(a) - class 변경하기 꼬옥 -->
										<footer class="footer1">
											<div class="btnContainer1">
											    <a href="https://www.naver.com/" title="Button fade" class="btnFade1 keyword1"># <%=s.getKeyword1() %></a>
											    <a href="" title="Button fade" class="btnFade1 keyword2"># <%=s.getKeyword2() %></a>
											    <a href="" title="Button fade" class="btnFade1 keyword3"># <%=s.getKeyword3() %></a>
											    <a href="" title="Button fade" class="btnFade1 keyword4"># <%=s.getKeyword4() %></a>
											    <a href="" title="Button fade" class="btnFade1 keyword5"># <%=s.getKeyword5() %></a>
											    <a href="<%=s.getNews_link() %>" title="Button fade" class="btnFade1 link">원문보기</a>
											</div>
										</footer>
										</div>
										<img src="images/bg/pic_0.jpg">
										</a>
										</li>
								<%} %>
								<!-- <script>
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
								</script> -->

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
					<h2 class="hh2"><%=cateName2 %></h2>
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
								<%	
									i=0;
									for(Short s:list2){
										i++;%>
										<li class="slideitem" id="slideitem<%=i-1 %>">
										<a>
										<div class="textbox">
										<h3 class="htag"><%=s.getNews_title()%></h3>
										<div class="short"><p id="ptag1"><%=s.getNews_short() %></p></div>
										<!-- 카테고리 바뀔 때마다 footer, div, btnFade(a) - class 변경하기 꼬옥 -->
										<footer class="footer1">
											<div class="btnContainer1">
											    <a href="#section1" title="Button fade" class="btnFade1 keyword1"># <%=s.getKeyword1() %></a>
											    <a href="#section1" title="Button fade" class="btnFade1 keyword2"># <%=s.getKeyword2() %></a>
											    <a href="#section1" title="Button fade" class="btnFade1 keyword3"># <%=s.getKeyword3() %></a>
											    <a href="#section1" title="Button fade" class="btnFade1 keyword4"># <%=s.getKeyword4() %></a>
											    <a href="#section1" title="Button fade" class="btnFade1 keyword5"># <%=s.getKeyword5() %></a>
											    <a href="<%=s.getNews_link() %>" title="Button fade" class="btnFade1 link">원문보기</a>
											</div>
										</footer>
										</div>
										<img src="images/bg/pic_2.jpg">
										</a>
										</li>
									<%} %>
								<!-- <script>
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
								</script> -->

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
					<h2 class="hh2"><%=cateName3 %></h2>
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
								<%	
									i=0;
									for(Short s:list3){
										i++;%>
										<li class="slideitem" id="slideitem<%=i-1 %>">
										<a>
										<div class="textbox">
										<h3 class="htag"><%=s.getNews_title()%></h3>
										<div class="short"><p id="ptag1"><%=s.getNews_short() %></p></div>
										<!-- 카테고리 바뀔 때마다 footer, div, btnFade(a) - class 변경하기 꼬옥 -->
										<footer class="footer1">
											<div class="btnContainer1">
											    <a href="#section1" title="Button fade" class="btnFade1 keyword1"># <%=s.getKeyword1() %></a>
											    <a href="#section1" title="Button fade" class="btnFade1 keyword2"># <%=s.getKeyword2() %></a>
											    <a href="#section1" title="Button fade" class="btnFade1 keyword3"># <%=s.getKeyword3() %></a>
											    <a href="#section1" title="Button fade" class="btnFade1 keyword4"># <%=s.getKeyword4() %></a>
											    <a href="#section1" title="Button fade" class="btnFade1 keyword5"># <%=s.getKeyword5() %></a>
											    <a href="<%=s.getNews_link() %>" title="Button fade" class="btnFade1 link">원문보기</a>
											</div>
										</footer>
										</div>
										<img src="images/bg/pic_5.jpg">
										</a>
										</li>
								<%} %>
								<!-- <script>
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
								</script> -->

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
<%} %>
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