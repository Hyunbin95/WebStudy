<%@page import="listener.SessionListenerImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- jstl의 core 기능을 사용하기 위한 태그 라이브러리 설정 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
	#loginmsg{color:red}
</style>
</head>
<body>
	<%
		//현재 세션의 개수 출력
		int cnt = SessionListenerImpl.cnt;
		out.println("<p>현재 접속자 수:" + cnt + "</p>");
	%>
	
	<p><span id="loginmsg"></span></p>
	<form action="login" method="post">
		아이디<input type="text" size="15"
		required="required" placeholder="아이디를 입력하세요" 
		name="id" /><br />
		비밀번호<input type="password" size="15"
		required="required" name="pw" placeholder="비밀번호를 입력하세요"/><br />
		<input type="submit" value="로그인" />
	</form>
	
	<!-- 세션에 저장된 result가 fail 이라면 스크립트를 이용해서 메시지를 출력 -->
	<c:if test = "${result != null}">
		<c:if test = "${result == 'fail'}">
			<script>
				document.getElementById('loginmsg').innerHTML =
					'없는 아이디 이거나 잘못된 비밀번호 입니다.'
			</script>
		</c:if>
	</c:if>
	
</body>
</html>