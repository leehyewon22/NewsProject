<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 개꿀</title>
<style>
	
	input[type=checkbox]
	{
	  /* Double-sized Checkboxes */
	  -ms-transform: scale(1.5); /* IE */
	  -moz-transform: scale(1.5); /* FF */
	  -webkit-transform: scale(1.5); /* Safari and Chrome */
	  -o-transform: scale(1.5); /* Opera */
	  padding: 5px;
	}
	        
	label{
	display:inline-block; width:100px; line-height:50px;
	 }
	
        
</style>
</head>

<body>
	<!-- JoinCon은 url의 Mapping 값이다. 
	(web.xml을 통해 확인가능) 파일 이름이 아니다! -->
	<form action="JoinCon" method="post"> 
	<table align="center" >
		<tr bgcolor="whitesmoke">
			<td align="right">아이디 :
			<td align="left"><input type="text" name="mem_id" placeholder="아이디를 입력하세요."></td>
			<input type="button" value="ID중복체크" onclick="checkE()"></td>
		</tr>
		<tr bgcolor="whitesmoke">
			<td align="right">비밀번호 :</td>
			<td align="left"><input type="text" name="mem_pw" placeholder="비밀번호를 입력하세요."></td>
		</tr>
		<tr bgcolor="whitesmoke">
			<td align="right">이  름 :</td>
			<td align="left"><input type="text" name="mem_name" placeholder="이름을 입력하세요."></td>
		</tr>
		<tr bgcolor="whitesmoke"> 셀렉션맨으로 카테고리 옵션을 4개 주자~ 여기서 총 3개의 카테고리를 복수선택 갈겨야 함. 
			<td align="right">카테고리 :</td>
			<td align="left">
			<label for="정치">정치</label>
			<input type="checkbox" id="정치" value="1001" name="category">
			<label for="경제">경제</label>
			<input type="checkbox" id="경제" value="1021" name="category"><br>
			<label for="사회">사회</label>
			<input type="checkbox" id="사회" value="1022" name="category">
			<label for="생활/문화">생활/문화</label>
			<input type="checkbox" id="생활/문화" value="1023" name="category"><br>
			<label for="IT/과학">IT/과학</label>
			<input type="checkbox" id="IT/과학" value="1024" name="category">
			<label for="세계">세계</label>
			<input type="checkbox" id="세계" value="1025" name="category">
			<label for="날씨">날씨</label>
			<input type="checkbox" id="날씨" value="1026" name="category">
			</td>
		</tr>
		<tr><td></td>
			<td align="right"><input type="submit" value="회원가입"> </td>
		</tr>
	</table>
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