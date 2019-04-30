<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- JSTL의 core 기능을 사용하기 위한 식별자와 접두어 등록 -->
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="num1" value="100" />
<c:set var="num2" value="1000" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 의 분기분</title>
</head>
<body>
	<!-- num1 또 num2 중에서 큰 값을 출력 
	문자열로 비교하기 때문 90 > 100 입니다.-->
	<c:if test="${num1 > num2}">
		<p>num1:${num1}</p>
	</c:if>
	
	<c:if test="${num1 < num2}">
		<p>num2:${num2}</p>
	</c:if>
	
	<!--  num1 값이 101 이면 우수 
	100이면 보통 그 이외의 경우는 부진이라고 출력
	일치하는 것을 비교할 때는 == 로 해도 되고 eq를 사용해도 된다.-->
	
	<c:choose>
		<c:when test="${num1 == 101}">
			<p>우수</p>
		</c:when>
		<c:when test="${num1 eq '100'}">
			<p>보통</p>
		</c:when>
		<c:otherwise>
			<p>부진</p>
		</c:otherwise>
	</c:choose>
	
</body>
</html>