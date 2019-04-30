<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request page</title>
</head>
<body>
	<!-- 숫자 2개를 입력받아서 전송하는 form -->
	<form action="process.jsp" method="get">
		<input type="number" name="su1" placeholder="숫자를 입력하세요"
		required="required" />
		<br />
		<input type="number" name="su2" placeholder="숫자를 입력하세요"
		required="required" />
		<br />
		<input type="submit" value="전송" />
		<br />
	</form>
</body>
</html>