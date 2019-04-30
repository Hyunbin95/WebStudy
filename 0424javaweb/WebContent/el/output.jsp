<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result print</title>
</head>
<body>
	결과 : <%= session.getAttribute("result") %>
	<br />
	EL을 이용한 출력 - 결과 : ${result}<br />
	subject 쿠키 : ${cookie.subject.value}<br />
	초기화 파라미터 출력: ${initParam.serversidelanguage}<br />
	내장 객체 출력:${pageContext.request.remoteAddr}<br />
</body>
</html>