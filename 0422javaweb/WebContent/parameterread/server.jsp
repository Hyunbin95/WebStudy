<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request parameter of form</title>
</head>
<body>
	<%
		//파라미터 인코딩 설정
		request.setCharacterEncoding("utf-8");
	
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		//checkbox는 여러 개를 선택할 수 있습니다.
		//이런 경우에는 getParameterValues로 읽어야 합니다.
		//String hobby = request.getParameter("hobby");
		String[] hobbies = request.getParameterValues("hobby");
	%>
	
	이름:<%=name %><br />
	성별:<%=gender %><br />
	취미:<%
		for(String hobby : hobbies){
			
		%>
		
		<%=hobby %>&nbsp;
		
		<%
			}
		%>
		<br /><br />
		<%@ page import = "java.util.*" %>
		<%
			Enumeration<String> e = request.getHeaderNames();
			while(e.hasMoreElements()){
				String headerName = e.nextElement();
		%>
			<p><%= headerName %></p>
		<%
			}
		%>
	
	<p><%=request.getHeader("referer") %></p>
	<p><%=request.getHeader("user-agent") %></p>
</body>
</html>