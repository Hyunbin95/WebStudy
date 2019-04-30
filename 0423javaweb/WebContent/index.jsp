<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
	<%
		//age 라는 파라미터가 없는데 정수로 변환 - 예외가 발생
		int age = Integer.parseInt(request.getParameter("age"));
	%>
</body>
</html>


