<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./assets/css/join.css">
	<title>Join</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<style>
		#mem_id{
			position: relative;
		}
		#mem_id_check{
			position: relative;
			top:-60px;
			left: 367px;
		}
		#header_login2 img{
			margin: 10px 0 0 0;
			width:  350px; 
			height: 80%;
			top:  -580%;
			position: relative;

		}
		#header_login2{
			text-align: center;
			top: -100px;
		}
	</style>
</head>

<body>

<!-- 로고 아이콘 -->
	<div id="header_login2">
		<a href="MainPage.jsp" data-position="center" id="News_Logo" ><img src="images/NEWSLOGO2.png" alt=""></a>
	</div>
	
<form action="JoinCon" method="post"> 
<div class="wrap">
       <div class="join">
           <h2>Join</h2>
           <div class="join_id">
               <h4>ID</h4>
               <input type="text" name="mem_id" id="mem_id" placeholder="ID">
               <input type="button" id="mem_id_check" value="중복 체크" onclick="checkE()">
               <span id="resultCheck"></span>
               
           </div>
           <div class="join_pw">
               <h4>Password</h4>
               <input type="password" name="mem_pw" id="mem_pw" placeholder="Password">
           </div>
           <div class="join_pw">
               <h4>Password Confirm</h4>
               <input type="password" name="" id="" placeholder="Password">
           </div>
           <div class="join_name">
               <h4>Nickname</h4>
               <input type="text" name="mem_name" id="mem_name" placeholder="Nickname">
           </div>
           
           
           <div class="join_cate">
               <h4>Category</h4> 
               <div class="wrapper">
			
			  <div class="container">
			    <label class="option_item">
			      <input type="checkbox" class="checkbox" name ="cat" value="1001">
			      <div class="option_inner facebook">
			        <div class="tickmark"></div>
			        <div class="icon"><i class="fa fa-balance-scale"></i></div>
			        <div class="cateName" id="정치" value="1001">정치</div>
			      </div>
			    </label>
			    <label class="option_item">
			      <input type="checkbox" class="checkbox" name ="cat" value="1021">
			      <div class="option_inner twitter">
			        <div class="tickmark"></div>
			        <div class="icon"><i class="fa fa-eur"></i></div>
			        <div class="cateName" id="경제"  value="1021">경제</div>
			      </div>
			    </label>
			    <label class="option_item">
			      <input type="checkbox" class="checkbox" name ="cat" value="1022">
			      <div class="option_inner instagram">
			        <div class="tickmark"></div>
			        <div class="icon"><i class="fa fa-users"></i></div>
			        <div class="cateName" id="사회" value="1022">사회</div>
			      </div>
			    </label>
			    <label class="option_item">
			      <input type="checkbox" class="checkbox" name ="cat" value="1023">
			      <div class="option_inner linkedin">
			        <div class="tickmark"></div>
			        <div class="icon"><i class="fa fa-bath" aria-hidden="true"></i></div>
			        <div class="cateName" id="생활/문화" value="1023">생활/문화</div>
			      </div>
			    </label>
			    <label class="option_item">
			      <input type="checkbox" class="checkbox" name ="cat" value="1024">
			      <div class="option_inner whatsapp">
			        <div class="tickmark"></div>
			        <div class="icon"><i class="fa fa-flask"></i></div>
			        <div class="cateName" id="IT/과학" value="1024">IT/과학</div>
			      </div>
			    </label>
			    <label class="option_item">
			      <input type="checkbox" class="checkbox" name ="cat" value="1025">
			      <div class="option_inner google">
			        <div class="tickmark"></div>
			        <div class="icon"><i class="fa fa-globe"></i></div>
			        <div class="cateName" id="세계" value="1025">세계</div>
			      </div>
			    </label>
			    
			  </div>
			
			</div>
           </div>

           <div class="submit">
               <input type="submit" value="submit">
           </div>
       </div>
   </div>
	</form>


			<script>
				function checkE(){
					var inputE = $('#mem_id').val()
					console.log(inputE)
					
					$.ajax({ //비동기방식 - ajax
						//요청 경로
						url : 'IdCheckCon',
						//요청 데이터{키(아무렇게나적음):실제값(위의 var inputE)}
						data : {'inputE':inputE},
						//요청 방식
						type : 'get',
						//요청-응답 성공
						success : function(data){ // 서버에서 받아오는 변수를 data라는 변수라고 명명?하는 듯?
							if(data=='true'){//data가 true -> 사용할 수 없는 아이디
								$('#resultCheck').text('😥사용할 수 없는 아이디입니다😥')
							}else{//data가 false -> 사용할 수 있는 아이디
								$('#resultCheck').text('😊사용할 수 있는 아이디입니다😊')
							}
						},
						error : function(){
							alert("통신실패!")
						}
					})
				}
			</script>


</body>
</html>