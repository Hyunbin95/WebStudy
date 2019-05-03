<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result delete page</title>
</head>
<body>
<div>삭제에 성공하셨습니다. <br/> 5초 후에 목록보기로 이동합니다.</div>
<script>
	//5초 후에 동작하는 타이머
	setTimeout(function(){
		location.href = "list.do"
	}, 5000)
</script>
</body>
</html>