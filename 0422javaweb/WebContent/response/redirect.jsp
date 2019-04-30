<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>redirect</title>
</head>
<body>
	<%
		//결과 페이지로 이동하는 방법 중의 하나가 redirect 입니다.
		//URL에 한글을 사용할 때는 반드시 인코딩 해서 사용해야 합니다.
		String p = java.net.URLEncoder.encode("한글","utf-8");
		response.sendRedirect("result.jsp?name=" + p);
		
	%>
	<p>리다이렉트되면 이 페이지는 출력되지 않고 결과 페이지로 바로 이동합니다.</p>
</body>
</html>