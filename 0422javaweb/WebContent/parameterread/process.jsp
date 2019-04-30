<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>query parameter page</title>
</head>
<body>


	<%
		//파라미터 읽기
		String query = request.getParameter("query");
		String p = request.getParameter("page");
		//없는 파라미터를 읽으면 null 이 리턴됩니다.
		String cnt = request.getParameter("cnt");
	%>
	
	query:<%= query %><br />
	p:<%= p %><br />
	cnt:<%= cnt %><br />
	
</body>
</html>