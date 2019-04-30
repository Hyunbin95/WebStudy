<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 에러 출력 페이지로 만드는 설정 -->
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error page</title>
</head>
<body>
	<!-- exception 객체는 내장 객체지만 에러페이지에서만 사용 가능 -->
	예외 메시지:<%=exception.getMessage() %>
</body>
</html>
<!-- 
	에러 페이지의 내용이 512바이트를 넘지 않으면 IE는 자체 에러페이지를 출력합니다.
	모든 브라우저에서 동일한 에러 페이지를 출력하고자 하면 이런 식으로 주석을 추가해서
	에러 페이지의 크기를 512바이트를 넘도록 만들어 주어야 합니다.
 -->
 