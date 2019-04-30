<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- JSTL의 core 기능을 사용하기 위한 식별자와 접두어 등록 -->
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.*, domain.*" %>
<%
	List<String> list = new ArrayList<>();
	list.add("프로그래밍언어");
	list.add("자료구조");
	list.add("알고리즘");
	list.add("프레임워크");
	list.add("sw공학");
	
	request.setAttribute("list", list);
	
	List<Board> boards = new ArrayList<>();
	Board board = new Board();
	board.setNum(1);
	board.setTitle("가입인사");
	board.setContent("안녕하세요");
	board.setReadcnt(1);
	board.setRegdate(new Date());
	boards.add(board);
	
	board = new Board();
	board.setNum(2);
	board.setTitle("제목");
	board.setContent("내용");
	board.setReadcnt(3);
	board.setRegdate(new Date());
	boards.add(board);
	
	request.setAttribute("boards", boards);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복 처리</title>
</head>
<body>
	<!-- 1부터 5까지 반복 수행
	begin은 시작 숫자 end는 종료 숫자
	var는 숫자를 저장할 변수명 step 은 간격
	var 와 step은 생략 가능-->
	<c:forEach begin="1" end="5" var = "cnt">
		<p>Hello World - ${cnt}</p>
	</c:forEach>
	
	<!-- 배열이나 list 출력 -->
	<select id="computerscience" name="computerscience">
		<c:forEach var="item" items="${list}">
			<option value="${item}">${item}</option>
		</c:forEach>
	
	</select>
	
	<!-- 테이블을 이용해서 Map 이나 DTO의 List 또는 배열 출력하기 -->
	<table border = "1">
		<thead>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<!-- items에 없는 속성이름을 사용하면 에러가 아니고 출력을 안함
				EL은 null 인 경우 출력을 안함 -->
			<c:forEach var="board" items="${boards}">
				<tr>
					<!-- 속성 이름을 틀린경우는 Property가 없다고 에러 -->
					<td>${board.num}</td>
					<td>${board.title}</td>
					<td>${board.regdate}</td>
					<td>${board.readcnt}</td>
				</tr>
			</c:forEach>
		
		</tbody>
		
	</table>
	
	<!-- delimiter : 구분 기호 -->
	<ol>
	<c:forTokens var="token" items="Java JavaScript Swift Python" delims=" ">
		<li>${token}</li>
	</c:forTokens>
	</ol>
	
</body>
</html>