<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<td align="right">아이디 :</td>
			<td align="left"><input type="text" name="id" placeholder="아이디를 입력하세요."></td>
		</tr>
		<tr bgcolor="whitesmoke">
			<td align="right">비밀번호 :</td>
			<td align="left"><input type="text" name="pw" placeholder="비밀번호를 입력하세요."></td>
		</tr>
		<tr bgcolor="whitesmoke">
			<td align="right">이  름 :</td>
			<td align="left"><input type="text" name="name" placeholder="이름을 입력하세요."></td>
		</tr>
		<tr bgcolor="whitesmoke"> 셀렉션맨으로 카테고리 옵션을 4개 주자~ 여기서 총 3개의 카테고리를 복수선택 갈겨야 함. 
			<td align="right">카테고리 :</td>
			<td align="left">
			<label for="정치">정치</label>
			<input type="checkbox" id="정치" value="1" name="category">
			<label for="경제">경제</label>
			<input type="checkbox" id="경제" value="2" name="category"><br>
			<label for="사회">사회</label>
			<input type="checkbox" id="사회" value="3" name="category">
			<label for="생활/문화">생활/문화</label>
			<input type="checkbox" id="생활/문화" value="4" name="category"><br>
			<label for="IT/과학">IT/과학</label>
			<input type="checkbox" id="IT/과학" value="5" name="category">
			<label for="세계">세계</label>
			<input type="checkbox" id="세계" value="6" name="category">
			<label for="날씨">날씨</label>
			<input type="checkbox" id="날씨" value="7" name="category">
			</td>
		</tr>
		<tr><td></td>
			<td align="right"><input type="submit" value="회원가입"> </td>
		</tr>
	</table>
</form>
</body>
</html>