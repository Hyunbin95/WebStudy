<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 저장하는 페이지</title>
</head>
<body>
<%
	//앞에서 넘겨주는 파라미터 읽기
	String language = request.getParameter("language");
	//쿠키를 만들어서 저장
	Cookie cookie = new Cookie("language", language);
	response.addCookie(cookie);
	
	//요청했던 페이지로 돌아가기
	response.sendRedirect("config.jsp");

%>

</body>
</html>