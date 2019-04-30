<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 생성</title>
</head>
<body>
	<%@ page import = "java.util.*, domain.*" %>
	<%
		String [] ar = {"FrontEnd", "BackEnd", "FullStack"};
		List<String> list = new ArrayList<>();
		list.add("Stack"); list.add("Queue");
		list.add("Deque"); list.add("DenseList");
		list.add("LinkedList");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("num", 1);
		map.put("name", "이상혁");
		
		Board board = new Board();
		board.setNum(1);
		board.setTitle("제목");
		board.setContent("내용");
		board.setReadcnt(123);
		
		Calendar cal = new GregorianCalendar();
		Date date = new Date(cal.getTimeInMillis());
		board.setRegdate(date);
		
		//포워딩으로 이동할 때 데이터 전달 : request, session 모두 가능
		request.setAttribute("ar", ar);
		request.setAttribute("list", list);
		request.setAttribute("map", map);
		request.setAttribute("board", board);
		
		//결과 페이지로 포워딩
		RequestDispatcher dispatcher = 
			request.getRequestDispatcher("display.jsp");
		dispatcher.forward(request, response);
	%>
</body>
</html>