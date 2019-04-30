<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>

	<% if(session.getAttribute("id") == null) {%>
	<!-- form에 password, textarea, file이 있을 때는 method는 반드시 post -->
	<form action="loginprocess.jsp" method="post">
		<p><label for="">아이디</label>
		<input type="text" name="id" required="required" /></p>
		<p><input type="password" name="pw" required="required"
		placeholder="비밀번호를 입력하세요"/></p>
		<p><input type="submit" value="로그인" /></p>
		
	</form>
	
	<% if(session.getAttribute("login")!= null &&
		session.getAttribute("login").equals("fail")){%>
	
		<p style="color:red;">없는 아이디 이거나 비밀번호가 틀렸습니다.</p>
	<%}  %>
	
	<%}else {%>
		<%=session.getAttribute("alias") %>님 환영합니다.<br />
		<a href="logout.jsp">로그아웃</a>
	<%} %>
</body>
</html>