<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/home.do">WebSiteName</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="/home.do">Home</a></li>
				<li><a href="/guest/main.do">손님</a></li>
				<sec:authorize access="hasRole('USER') or hasRole('ADMIN')">
					<li><a href="/user/main.do">내 정보</a></li>
				</sec:authorize>
				<sec:authorize access="hasRole('ADMIN')">
					<li class="active"><a href="/admin/home.do">관리자 페이지</a></li>
				</sec:authorize>
			</ul>
			<ul class="nav navbar-nav pull-right">
				<sec:authorize access="isAnonymous()">
					<li><a href="/login.do">로그인</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li><a href="/logout.do">
					<sec:authentication property="principal.user.name"/> ${username } 로그아웃
					</a></li>
				</sec:authorize>
				
			</ul>
		</div>
	</nav>
</body>
</html>