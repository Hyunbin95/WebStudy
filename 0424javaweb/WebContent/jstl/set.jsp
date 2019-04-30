<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- JSTL의 core 기능을 사용하기 위한 식별자와 접두어 등록 -->
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!-- page 객체에 속성을 추가 -->
<c:set var="name" value="value" />
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변수 생성 및 출력</title>
</head>
<body>
	위에서 만든 변수 출력 : ${name}
</body>
</html>