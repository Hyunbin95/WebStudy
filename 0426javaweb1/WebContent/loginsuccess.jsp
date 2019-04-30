<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- jstl의 core 기능을 사용하기 위한 태그 라이브러리 설정 -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login success page</title>
<!-- jquery를 사용하기 위한 링크 설정 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	//웹 브라우저의 창을 닫을 때 ajax 요청을 이용해서 로그아웃 처
	$(window).bind("beforeunload", function(){
		console.log("이벤트 발생")
		$.ajax({url:'logout'})
	})
</script>

<style>
	#loginmsg{color:red;}
</style>


</head>
<body>
	<!-- EL을 이용해서 별명 출력 -->
	<p>${nickname}님</p>
	<p><a href="logout">로그아웃</a></p>

</body>
</html>