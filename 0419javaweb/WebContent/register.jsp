<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 처리</title>
</head>
<body>
	<%
		//파라미터 전체를 Map으로 변환
		Map<String, String[]> map = request.getParameterMap();
	
		Set <String> keySet = map.keySet();
		
		for(String key : keySet){
	%>
		<p><%=key %>:<%=map.get(key) %></p>

	<%
		}
	%>

</body>
</html>