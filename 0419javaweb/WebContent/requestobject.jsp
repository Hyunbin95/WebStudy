<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 객체</title>
</head>
<body>
	<p>접속한 클라이언트 IP:<%= request.getRemoteAddr() %></p>
	<p>클라이언트가 요청한 전체 경로:<%= request.getRequestURI() %></p>
	<p>클라이언트가 요청한 서버 경로:<%= request.getContextPath() %></p>
	
	<%
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		//requestURI에서 contextPath에 해당하는 부분만 제거
		//겹치는 부분의 글자수를 파악해서 그 부분 이후부터 가져오면 됩니다.
		int len = contextPath.length();
		String uri = requestURI.substring(len);
		//하나의 문자열에서 일정한 패턴이 있는지 그리고그 패턴을 제외한 부분을 제거
		
	%>
	
	<p>요청한 트래픽:<%= request.getContentLength() %></p>
	<p>겹치는 부분을 제외한 문자열:<%=uri %></p>
</body>
</html>