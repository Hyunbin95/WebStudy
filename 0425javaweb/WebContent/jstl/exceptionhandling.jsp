<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl 의 코어기능을 사용하기 위한 태그 라이브러리 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - 예외처리</title>
</head>
<body>
	<!-- try의 역할 : 예외가 발생하면 예외 객체를 e에 대입 -->
	<c:catch var="e">
		<%
			int result = 100/0;
			out.println("결과:" + result);
		%>
	</c:catch>
	<!-- 예외가 발생했을 때 수행할 내용 : catch의 역할 -->
	<c:if test="${e != null }">
		<p>에러메시지:${e.message }</p>
	</c:if>
	
</body>
</html>