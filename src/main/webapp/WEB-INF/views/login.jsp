<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>로그인 폼</h2>
		
		<c:if test="${param.error eq 'fail' }">
			<div class="alert alert-danger">
			  <strong>로그인 실패!</strong> 아이디 혹은 비밀번호가 올바르지 않습니다.
			</div>
		</c:if>
		
		<form method="post" action="loginprocess.do" class="well">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<div class="form-group">
				<label for="userid">아이디</label> 
				<input type="text" class="form-control" id="username" name="username" placeholder="아이디를 입력하세요.">
			</div>
			<div class="form-group">
				<label for="pwd">비밀번호</label> 
				<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요.">
			</div>
			<button type="submit" class="btn btn-default">로그인</button>
		</form>
	</div>
</body>
</html>