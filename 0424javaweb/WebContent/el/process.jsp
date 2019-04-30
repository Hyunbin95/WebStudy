<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처리하는 페이지</title>
</head>
<body>
	<%
		//파라미터가 있으면 파라미터 읽기
		request.setCharacterEncoding("utf-8");
		String n1 = request.getParameter("su1");
		String n2 = request.getParameter("su2");
		
		//필요한 처리
		int su1 = Integer.parseInt(n1);
		int su2 = Integer.parseInt(n2);
		int result = su1 + su2 ;
		
		//결과를 저장 - forwarding으로 이동할 때는 request 나 session
		//request.setAttribute("result", result);
		
		//redirect로 이동할 때는 session을 사용
		session.setAttribute("result", result);
		
		//결과를 Page로 이동
		
		//Forwarding을 하게 되면 결과 Page URL을 보여주는 것이 아니고
		//처리 Page의 URL을 출력합니다.
		
		
		//결과를 페이지로 이동
		
		//포워딩을 하게되면 결과 페이 URL을 보여주는 것이 아니고
		//처리 페이지 URL을 출력
		/*
		RequestDispatcher dispatcher = 
			request.getRequestDispatcher("output.jsp");
		dispatcher.forward(request, response);
		*/
		
		//쿠키를 만들어서 브라우저에 저장
		//쿠키는 반드시 한글 인코딩한 값을 입력해야 함 
		String value = java.net.URLEncoder.encode("자바 웹 프로그래밍","utf-8");
		Cookie cookie = new Cookie("subject", value);
		response.addCookie(cookie);
		
		
		//리다이렉트로 결과 페이지로 이동
		//request는 새로 만들어 집니다.
		response.sendRedirect("output.jsp");
		
	%>

</body>
</html>