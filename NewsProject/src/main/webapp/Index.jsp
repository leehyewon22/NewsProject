<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<!-- 		<link rel="stylesheet" href="assets/css/main.css" /> -->
		<link rel="stylesheet" href="assets/css/main2.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
 
 
 <!-- Contents.jsp -->
 
     <link rel="stylesheet" href="nicepage.css" media="screen">
	<link rel="stylesheet" href="About.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" "="" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" "="" defer=""></script>
    <meta name="generator" content="Nicepage 4.15.8, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
		}
	</script>
	
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="About">
    <meta property="og:type" content="website">
    
    <!-- style 로그인 / 회원가입 -->
    	<style type="text/css">
    	
			#button_Login{
				margin-left: -25px
			}
			#button_Join{
				margin-left: 1500px
			}
			#button_Logout{
				margin-left: 1680px
			}
    	</style>
    	
    	<!-- style 검색창 -->
    	<style>
    
		#header form{
			margin : 0 200px 0 200px;
		}
		
		</style>
    
       <script>
    <!--  검색창 버튼 클릭 합수 -->
		    function searchClick(){
		    	 
		    	 var searchText = document.getElementById("searchKeyword");
		    	 if(searchText!=null){
		    		/*  alert("검색성공!! = "+searchText.value);*/
		    		 self.location.href = "{{url_for('Search_list')}}?search=" + searchText.value; 
		    		 return true
		    	 }else{
		    		  return false
		    	 }
		    	 
	/* 	    	var v_search = document.getElementById("search").value;
		
		        if(v_search == "") {
		            return false
		        } else {
		            self.location.href = "{{url_for('Search_list')}}?search=" + v_search;
		        } */
		    } 
	</script>
</head>

<body class="is-preload">

	<%
		//session 값 가지고 오기
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		// 메인페이지에서 세션이 필요한 것들??
	%>


	<ul class="actions">
								<!-- <li><a href="generic.html" class="button">Learn More</a></li> -->			
								<%if(loginMember==null) { %>
							    <a href="Join.jsp" class="button" id="button_Join" ><li style="color:black">회원가입</li></a>
								<a href="Login.jsp" class="button" id="button_Login"><li style="color:black">로그인</li></a>
								<%} else{ %>
								<a href="LogoutCon" class="button" id="button_Logout"><li style="color:black">로그아웃</li></a>
								<%} %>
	</ul>


		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						<!-- <span class="logo"><img src="images/logo.svg" alt="" /></span> -->
						<span class="logo"><img src="images/NEWSLOGO2.png" alt="" /></span>
						<h1>Stellar</h1>
						<!-- 검색창 -->
<!-- 						<p>Just another free, fully responsive site template<br />
						built by <a href="https://twitter.com/ajlkn">@ajlkn</a> for <a href="https://html5up.net">HTML5 UP</a>.</p> -->

						<form action="http://127.0.0.1:5000" method="get" class="u-border-1 u-border-grey-15 u-search u-search-right u-search-1">
					          <button class="u-search-button" type="submit">
						          <div class="u-file-icon u-search-icon u-text-grey-40 u-search-icon-1" style="display: flex; justify-content: center;">
							          <div> Search </div> <img src="images/searchIcon.png" alt="" >
							          </div>
					          </button>
				          <input type="search" name="search" id="search" onclick="searchClick();" autocomplete="off" required>
				        </form>		
					
					
					
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul>
<!-- 							<li><a href="#intro" class="active">Introduction</a></li>
							<li><a href="#first">First Section</a></li>
							<li><a href="#second">Second Section</a></li>
							<li><a href="#cta">Get Started</a></li> -->
							<li><a href="#intro" class="active">RealTime Keyword</a></li>
							<li><a href="#first">First category</a></li>
							<li><a href="#second">Second category</a></li>
							<li><a href="#cta">Third category</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Introduction -->
							<section id="intro" class="main">
								<div class="spotlight">
<!-- 									<div class="content">
										<header class="major">
											<h2>Ipsum sed adipiscing</h2>
										</header>
										<p>Sed lorem ipsum dolor sit amet nullam consequat feugiat consequat magna
										adipiscing magna etiam amet veroeros. Lorem ipsum dolor tempus sit cursus.
										Tempus nisl et nullam lorem ipsum dolor sit amet aliquam.</p>
										<ul class="actions">
											<li><a href="generic.html" class="button">Learn More</a></li>
										</ul>
										
									</div> -->
									<!-- <span class="image"><img src="images/pic01.jpg" alt="" /></span> -->
									<img src="images/pic_01.jpg" class="spotlightimg">
								</div>
							</section>

						<!-- First Section -->
							<section id="first" class="main special">
								<header class="major">
									<h2>Magna veroeros</h2>
								</header>
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
											
											<script>
												for (let i = 0; i < 10; i++) {
												  document.write('<li class="slideitem">');
													  document.write('<a>');
													  document.write('<div class="textbox">');
													  document.write('<h3 class="htag">'+i+'번째 슬라이드</h3>');
													  document.write('<p class="ptag">'+i+'번째 슬라이드 입니다.</p>');
													  document.write('</div>');
													  document.write('<img src="images/bg/pic_'+i+'.jpg">');
													  document.write('</a>');
												  document.write('</li>');
												}
												
												
											</script>
											
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

						<!-- Second Section -->
							<section id="second" class="main special">
								<header class="major">
									<h2>Ipsum consequat</h2>
									<p>Donec imperdiet consequat consequat. Suspendisse feugiat congue<br />
									posuere. Nulla massa urna, fermentum eget quam aliquet.</p>
								</header>
								<ul class="statistics">
									<li class="style1">
										<span class="icon solid fa-code-branch"></span>
										<strong>5,120</strong> Etiam
									</li>
									<li class="style2">
										<span class="icon fa-folder-open"></span>
										<strong>8,192</strong> Magna
									</li>
									<li class="style3">
										<span class="icon solid fa-signal"></span>
										<strong>2,048</strong> Tempus
									</li>
									<li class="style4">
										<span class="icon solid fa-laptop"></span>
										<strong>4,096</strong> Aliquam
									</li>
									<li class="style5">
										<span class="icon fa-gem"></span>
										<strong>1,024</strong> Nullam
									</li>
								</ul>
								<p class="content">Nam elementum nisl et mi a commodo porttitor. Morbi sit amet nisl eu arcu faucibus hendrerit vel a risus. Nam a orci mi, elementum ac arcu sit amet, fermentum pellentesque et purus. Integer maximus varius lorem, sed convallis diam accumsan sed. Etiam porttitor placerat sapien, sed eleifend a enim pulvinar faucibus semper quis ut arcu. Ut non nisl a mollis est efficitur vestibulum. Integer eget purus nec nulla mattis et accumsan ut magna libero. Morbi auctor iaculis porttitor. Sed ut magna ac risus et hendrerit scelerisque. Praesent eleifend lacus in lectus aliquam porta. Cras eu ornare dui curabitur lacinia.</p>
								<footer class="major">
									<ul class="actions special">
										<li><a href="generic.html" class="button">Learn More</a></li>
									</ul>
								</footer>
							</section>

						<!-- Get Started -->
							<section id="cta" class="main special">
								<header class="major">
									<h2>Congue imperdiet</h2>
									<p>Donec imperdiet consequat consequat. Suspendisse feugiat congue<br />
									posuere. Nulla massa urna, fermentum eget quam aliquet.</p>
								</header>
								<footer class="major">
									<ul class="actions special">
										<li><a href="generic.html" class="button primary">Get Started</a></li>
										<li><a href="generic.html" class="button">Learn More</a></li>
									</ul>
								</footer>
							</section>

					</div>
					
					
				<!-- Footer -->
					<footer id="footer">
						<section>
							<h2>Aliquam sed mauris</h2>
							<p>Sed lorem ipsum dolor sit amet et nullam consequat feugiat consequat magna adipiscing tempus etiam dolore veroeros. eget dapibus mauris. Cras aliquet, nisl ut viverra sollicitudin, ligula erat egestas velit, vitae tincidunt odio.</p>
						</section>
						<section>
							<h2>Etiam feugiat</h2>
							<dl class="alt">
								<dt>Address</dt>
								<dd>1234 Somewhere Road &bull; Nashville, TN 00000 &bull; USA</dd>
								<dt>Phone</dt>
								<dd>(000) 000-0000 x 0000</dd>
								<dt>Email</dt>
								<dd><a href="#">information@untitled.tld</a></dd>
							</dl>
							<ul class="icons">
								<li><a href="#" class="icon brands fa-twitter alt"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-facebook-f alt"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram alt"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands fa-github alt"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon brands fa-dribbble alt"><span class="label">Dribbble</span></a></li>
							</ul>
						</section>
						<p class="copyright">&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!-- <script src="assets/js/main.js"></script> -->
			<script src="assets/js/main2.js"></script>

	</body>
</html>