<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl의 core 기능을 사용하기 위한 태그 라이브러리 설정 -->
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main page</title>
</head>
<body>
	<c:forEach var = "item" items="${list}">
		<p>${item}</p>
	</c:forEach>

</body>
</html>