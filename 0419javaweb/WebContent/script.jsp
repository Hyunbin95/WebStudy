<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트</title>
</head>
<body>
<%
	int n = 10;

	Map<String, Object> map = new HashMap<>();
	
	List<Map<String, Object>> list = new ArrayList<>();
	
	map.put("name", "Java Web Programming");
	map.put("alias", "JSP");
	list.add(map);
	
	map = new HashMap<>();
	map.put("language", "Java");
	map.put("db", "oracle");
	list.add(map);
%>

<p>n:<%=n %></p>

<p>name:<%=map.get("name") %></p>
<p>alias:<%=map.get("alias") %></p>
<p>========================================</p>
<table border="1">
	<thead>
		<tr>
			<th>언어</th>
			<th>데이터베이스</th>
		</tr>
	</thead>
	
	<tbody>
		<%
			for(Map<String, Object> imsi : list){
		%>
		<tr>
			<td><%=imsi.get("language") %></td>
			<td><%=imsi.get("db") %></td>
		</tr>
		<%
			}
		%>
		
	</tbody>
</table>
</body>
</html>