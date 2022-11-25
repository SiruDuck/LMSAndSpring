<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>영문대학교(LMS)</title>
<link rel="short icon" type="image/x-icon" href="resources/images/mainlogin/lmslogo.png">
<link rel="stylesheet" href="resources/css/mainlogin.css" />
</head>
<body>
<header>
	<img src="resources/images/mainlogin/logo_black.png">
</header>

<div class='content'>
	<div class='col-main'>
		<div class='col-login'>
			<div class='loginbox'>
			<h2 class='login-title'>LOGIN</h2>
			<form class='mform' method='post' action='login'>
				<div class='textform'>
					<input type='text' id='id' name='id' placeholder='사용자 아이디' class='user-id'>
					<input type='password' id='pw' name='pw' placeholder='비밀번호' class='user-pw'>
				</div>
				<div class='submit-login'>
					<input type='submit' id='login' name='btn_login' class='btn-login' value='로그인' onclick="location='/login'">
				</div>
				<div class='checkbox'>
					<label><input type="checkbox" id='remember' name='remember_user'>사용자이름 기억</label>
				</div>
				<div class='find'>
					<a href='' target='_blank'>아이디 / 비밀번호 찾기</a>
				</div>
			</form>
			</div>
		<div class='col-family'>
			<ul>
				<li class='family1'><a href ='#'>영문대학교</a></li>
				<li class='family2'><a href ='#'>중앙도서관</a></li>
				<li class='family3'><a href ='#'>종합정보시스템</a></li>
				<li class='family4'><a href ='welcom'>학교소개</a></li>
			</ul>
		</div>
		</div>
		<div class='notice'>
			<div class='col-notice'>
				<div>
					<h3>공지사항</h3>
					<ul>
						<li><a href=''>[LMS를 활용한 수업 관리 노하우] 온라인 워크숍 안내</a></li>
						<li><a href=''>MS Teams 녹화영상 확인 방법 안내</a></li>
						<li><a href=''>[교수용] LMS 시험(퀴즈) 기능 관련 유의사항 안내</a></li>
						<li><a href=''>LMS - MS TEAMS 연동 교수용 매뉴얼</a></li>
					</ul>
				</div>
			</div>
			<div class='row'>
				<div class='col-login-btn'>
					<div class='login-btn'><a href='' class='right-arrow'>Q&A</a></div>
					<div class='login-btn'><a href='' class='right-arrow'>공지사항</a></div>
					<div class='login-btn'><a href='' class='right-arrow'>메뉴얼</a></div>
					<div class='login-btn'><a href='' class='right-arrow'>FAQ</a></div>
				</div>
			</div>
		</div>
	</div>
</div>
<footer>
	<div class="footer-info">
		<a href='' class='info'>개인정보처리방침</a>
		<a class='addr'>광주광역시 서구 농성동 경열로 3<span class='tel'>연락처: 062-362-7897</span></a>
	</div>
</footer>
<script>

$('.login').click(function(){
	url:'/login'
});

</script>
</body>
</html>