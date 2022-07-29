<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./assets/css/join.css">
	<title>Join</title>
</head>

<body>
<div class="wrap">
       <div class="join">
           <h2>Join</h2>
           <div class="join_id">
               <h4>ID</h4>
               <input type="id" name="" id="" placeholder="ID">
           </div>
           <div class="join_pw">
               <h4>Password</h4>
               <input type="password" name="" id="" placeholder="Password">
           </div>
           <div class="join_pw">
               <h4>Password Confirm</h4>
               <input type="password" name="" id="" placeholder="Password">
           </div>
           <div class="join_name">
               <h4>Nickname</h4>
               <input type="name" name="" id="" placeholder="Nickname">
           </div>
           
           
           <div class="\_cate">
               <h4>Category</h4> 
               <div class="wrapper">
			
			  <div class="container">
			    <label class="option_item">
			      <input type="checkbox" class="checkbox">
			      <div class="option_inner facebook">
			        <div class="tickmark"></div>
			        <div class="icon"><i class="fa fa-balance-scale"></i></div>
			        <div class="cateName">정치</div>
			      </div>
			    </label>
			    <label class="option_item">
			      <input type="checkbox" class="checkbox" checked>
			      <div class="option_inner twitter">
			        <div class="tickmark"></div>
			        <div class="icon"><i class="fa fa-eur"></i></div>
			        <div class="cateName">경제</div>
			      </div>
			    </label>
			    <label class="option_item">
			      <input type="checkbox" class="checkbox">
			      <div class="option_inner instagram">
			        <div class="tickmark"></div>
			        <div class="icon"><i class="fa fa-users"></i></div>
			        <div class="cateName">사회</div>
			      </div>
			    </label>
			    <label class="option_item">
			      <input type="checkbox" class="checkbox" checked>
			      <div class="option_inner linkedin">
			        <div class="tickmark"></div>
			        <div class="icon"><i class="fa fa-bath" aria-hidden="true"></i></div>
			        <div class="cateName">생활/문화</div>
			      </div>
			    </label>
			    <label class="option_item">
			      <input type="checkbox" class="checkbox" checked>
			      <div class="option_inner whatsapp">
			        <div class="tickmark"></div>
			        <div class="icon"><i class="fa fa-flask"></i></div>
			        <div class="cateName">IT/과학</div>
			      </div>
			    </label>
			    <label class="option_item">
			      <input type="checkbox" class="checkbox">
			      <div class="option_inner google">
			        <div class="tickmark"></div>
			        <div class="icon"><i class="fa fa-globe"></i></div>
			        <div class="cateName">세계</div>
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







	<!-- JoinCon은 url의 Mapping 값이다. 
	(web.xml을 통해 확인가능) 파일 이름이 아니다! -->
	<form action="JoinCon" method="post"> 
	
	</form>









			<script>
				function checkE(){
					var inputE = $('#inputE').val()
					console.log(inputE)
					
					$.ajax({ //비동기방식 - ajax
						//요청 경로
						url : 'EmailCheckCon',
						//요청 데이터{키(아무렇게나적음):실제값(위의 var inputE)}
						data : {'inputE':inputE},
						//요청 방식
						type : 'get',
						//요청-응답 성공
						success : function(data){ // 서버에서 받아오는 변수를 data라는 변수라고 명명?하는 듯?
							if(data=='true'){//data가 true -> 사용할 수 없는 아이디
								$('#resultCheck').text('사용할 수 없는 아이디')
							}else{//data가 false -> 사용할 수 있는 아이디
								$('#resultCheck').text('사용할 수 있는 아이디')
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