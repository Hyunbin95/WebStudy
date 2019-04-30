<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result page</title>
</head>
<body>
	이름:<%= request.getParameter("name") %>
	
	<%
		//print는 모아서 한꺼번에 출력하기 때문에
		//어떻게 나누어 작성하더라도 결국은 하나로 만들어서 출력
		out.print("<a href='http://www.google");
		out.print(".com'>구글</a><br />");
		
		//println은
		//바로바로 출력하기 때문에 잘못 나누어서 출력하면
		//의도했던 결과와는 다르게 출력될 수 있습니다.
		out.println("<a href='http://www.google");
		out.println(".com'>구글</a><br />");
		
	%>
</body>
</html>