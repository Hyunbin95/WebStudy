<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl 의 코어기능을 사용하기 위한 태그 라이브러리 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setting date format</title>
</head>
<body>
	<!-- pattern에 사용하는 서식은 SimpleDateFormat의 서식 -->
	<p><fmt:formatDate value="${date}" type="date"
	pattern="yyyy/MM/dd(EEE)" /></p>
	<p><fmt:formatDate value="${date}" type="time"
	pattern="(a) hh:mm:ss" /></p>
	<p><fmt:formatNumber value="${num}" type="currency"/></p>
	<p><fmt:formatNumber value="${num}" pattern="#,###.00"/></p>
	
	<h3>중국</h3>
	<fmt:setLocale value="en_us" />
		<p><fmt:formatDate value="${date }"
		type="date" dateStyle="full"/></p>
		<p><fmt:formatNumber value="${num }"
		type="currency" /></p>
	
</body>
</html>