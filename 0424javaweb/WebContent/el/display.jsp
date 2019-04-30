<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL을 이용한 데이터 출력</title>
</head>
<body>
	<!-- EL은 배열과 List를 동일한 방법을 이용해서 출력-->
	배열 출력 : ${ar[0]}<br />
	리스트 출력 : ${list[0]}<br/>
	
	<!--  Map 과 DTO 클래스의 객체를 이용해서 출력 -->
	맵 출력 : ${map.num}<br/>
	DTO 출력 : ${board.regdate}<br/>
	<!-- DTO에서는 regdate 가 getRegdate()를 호출 -->
	
	<!-- EL을 이용해서 메소드 호출 : 리턴이 있는 메소드만 호출 가능 -->
	메소드 호출:${board.getRegdate()}<br/>
	
</body>
</html>