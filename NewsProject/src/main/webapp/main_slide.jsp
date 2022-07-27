<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>슬라이드</title>
<link href="main_slide.css" rel="stylesheet" type="text/css">

</head>
<body>

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
</body>
</html>