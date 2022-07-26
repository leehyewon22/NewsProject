<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>슬릭슬라이더활용</title>
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <style>
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
		  text-decoration:none !important;
		}
        section{
            margin-top: 150px;
        }
        .slick-arrow{
            position: absolute; top:100%; transform: translateY(-10%);
            /*margin-left: 500px;*/
            width: 100px; height: 100px;
            border: none;
            /*text-indent: -9999px;
            overflow: hidden;*/
        }
        .slick-prev{z-index: 100;left:40%;
            background:url(img/btn1_prev.png) no-repeat 0 0;}
        .slick-next{right:40%;
            background:url(img/btn1_next.png) no-repeat 0 0;}
        .slick-dots{position: absolute; bottom:10px;left:50%; transform: translatex(-50%);}
        .slick-dots li{float: left; list-style: none;}
        .slick-dots li button{background: url(img/navi_dot2.png) no-repeat 0 0;
            border: none;
            margin: 0 10px;
            }
        .slick-dots .slick-active button{background: url(img/navi_dot_on.png) no-repeat 0 0;}
        .mainSlide img{
            width: 500px;
            height: 500px;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></s> -->
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script>
        $(function(){
            $('.mainSlide').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            dots:true
            });
        })
    </script>
</head>
<body>
    <header id="header_login">
		<!-- 로그인 아이콘 -->
		<!-- <h2><a href="#" id="login_logo" >로그인</a></h2> -->
		<a href="#" data-position="center" id="login_logo"><img src="images/loginicon.png" alt="" width="80px" height="80px" /></a>
		<!-- 검색 아이콘 -->
		<a href="#" data-position="center" id="search_logo"><img src="images/searchicon.png" alt="" width="80px" height="80px" /></a>
		<!-- <h2><a href="#" id="search_logo">검색</a></h2> -->
	</header>


<div id="aa">

    <section class="panel">
    <div class="mainSlide">
        <div><img src="images/pic01.jpg"></div>
        <div><img src="images/pic02.jpg"></div>
        <div><img src="images/pic03.jpg"></div>
        <div><img src="images/pic01.jpg"></div>
        <div><img src="images/pic02.jpg"></div>
        <div><img src="images/pic03.jpg"></div>
    </div>
    
    </section>
</div>




    

    <script type="text/javascript">
        // <![CDATA[  <-- For SVG support
        if ('WebSocket' in window) {
            (function () {
                function refreshCSS() {
                    var sheets = [].slice.call(document.getElementsByTagName("link"));
                    var head = document.getElementsByTagName("head")[0];
                    for (var i = 0; i < sheets.length; ++i) {
                        var elem = sheets[i];
                        var parent = elem.parentElement || head;
                        parent.removeChild(elem);
                        var rel = elem.rel;
                        if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
                            var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
                            elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
                        }
                        parent.appendChild(elem);
                    }
                }
                var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
                var address = protocol + window.location.host + window.location.pathname + '/ws';
                var socket = new WebSocket(address);
                socket.onmessage = function (msg) {
                    if (msg.data == 'reload') window.location.reload();
                    else if (msg.data == 'refreshcss') refreshCSS();
                };
                if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
                    console.log('Live reload enabled.');
                    sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
                }
            })();
        }
        else {
            console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
        }
        // ]]>
    </script>
    <script src="/main.js"></script>

</body>
</html>