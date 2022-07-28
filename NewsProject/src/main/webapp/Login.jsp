<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Loginpage</title>
<link rel = "stylesheet" href="#">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>
    @import url('https://fonts.google.com/share?selection.family=Noto%20Sans%20KR:wght@100');
		* {margin: 0; padding: 0; box-sizing: border-box;}
		body{
		    font-family: 'Noto Sans KR', sans-serif;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    height: 100vh;
		    background: url('./images/bg.jpg') no-repeat center;
		    background-size: cover;
		}
		body::before{
		    content: "";
		    position: absolute; z-index: 1;
		    top: 0; right: 0; bottom: 0; left: 0;
		    background-color: rgba(0,0,0,.7);
		}
		.login-form {position: relative; z-index: 2;}
		.login-form h1{
		    font-size: 32px; color: #fff;
		    text-align: center;
		    margin-bottom: 60px;
		}
		.int-area{width: 400px; position: relative;
		    margin-top: 20px;}
		.int-area:first-child{margin-top: 0;}
		.int-area input{
		    width: 100%;
		    padding: 20px 10px 10px;
		    background-color: transparent;
		    border: none;
		    border-bottom: 1px solid #999;
		    font-size: 18px; color: #fff;
		}
		.int-area label{
		    position: absolute; left: 10px; top: 15px;
		    font-size: 18px; color: #999;
		    transition: all .5s ease;
		}
		.int-area input:focus+label,
		.int-area input:valid+label{
		    top: -2px;
		    font-size: 13px; color: #166CEA;
		}
		.btn-area{margin-top: 30px;}
		.btn-area button {
		    width: 100%; height: 50px;
		    background: #166CEA;
		    color: #fff;
		    font-size: 20px;
		    border: none;
		    border-radius: 25px;
		}
		.caption{
		    margin-top: 20px;
		    text-align: center;
		}
		.caption a{
		    font-size: 15px; color: #999;
		    text-decoration: none;
		}
    
    </style>
</head>
<body>
    <section class="login-form">
        <h1>OO님 환영합니다!</h1>
        <form action="LoginCon" method="post">
            <div class="int-area">
                <input type="text" name="mem_id" id="mem_id"
                autocomplete="off" >
                <label for="id">USER NAME</label>
            </div>
            <div class="int-area">
                <input type="password" name="mem_pw" id="mem_pw"
                autocomplete="off" >
                <label for="pw">PASSWORD</label>
            </div>
            <div class="btn-area">
			<table width="400px">
				<tr>
					<td>
		                <a href="main_page.jsp"><button type="submit" >로그인</button></a>
		            </td>
		             
		            <td>
		                <button type="button" onclick="location.href='Join.jsp'">회원가입</button>
		            </td>
		        </tr>
			</table>
            </div>
       </form>
        <div class="caption">
            <a href="">Forgot Password?</a>
        </div>
    </section>
</body>
</html>