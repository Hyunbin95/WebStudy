<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Print Cookies</title>
</head>
<body>
	<%
		//쿠키를 전부 가져오기
		Cookie [] cookies = request.getCookies();
		for(Cookie cookie : cookies){
			out.println(
					"<p>"+cookie.getName() + ":" + cookie.getValue() + "</p>");
		}
	%>
</body>
</html>