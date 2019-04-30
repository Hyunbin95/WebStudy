<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl 의 코어기능을 사용하기 위한 태그 라이브러리 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리다이렉트 페이지</title>
</head>
<body>
	<p>redirect page</p>
	<!-- 현재 페이지에서 다른 페이지로 리다이렉트 -->
	<c:redirect url = "exceptionhandling.jsp"></c:redirect>
</body>
</html>