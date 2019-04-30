<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Processing Page</title>
</head>
<body>

<%
	//파라미터 읽기
	String n1 = request.getParameter("n1");
	String n2 = request.getParameter("n2");
	
	int result = Integer.parseInt(n1) + Integer.parseInt(n2);
	
	//포워딩 하는 경우에는 request, session, application 모두 유지 가능
	//리다이렉트로 페이지 이동을 하는 경우에는 request 객체가 새로 만들어지므로
	//request에 저장한 내용은 소멸된다
	//request.setAttribute("result", result);
	
	session.setAttribute("result", result);
	
	//결과 페이지로 포워딩
	//결과 페이지가 데이터를 받아서 출력해야 하면 jsp
	//데이터를 받지 않고 출력만 하는 경우에는 html, jsp 모두 가능
	//포워딩을 하게 되면 URL이 처리할 때의 URL이 남게 된다
	//URL이 변경이 되지 않는다
	//새로고침을 하면 결과 페이지가 새로고침이 되는 것이 아니고 처리하는 부분이 새로고침이 된다
	/*
	RequestDispatcher dispatcher = request.getRequestDispatcher("output.jsp");
	dispatcher.forward(request, response);
	*/
	
	//결과 페이지 리다이렉트로 이동
	//리다이렉트는 흐름을 끊고 결과 페이지로 이동
	//URL이 결과 페이지로 변경 된다
	//새로 고침을 하게되면 처리가 다시 되지 않고 결과 페이지만 다시 출력
	//request 객체가 새로 만들어 진다
	//request 객체에 저장한 내용은 소멸된다
	response.sendRedirect("output.jsp");
%>

</body>
</html>