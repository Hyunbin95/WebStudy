<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>query login</title>
</head>
<body>
	<%
		//파라미터 읽어오기
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//로그인 처리
		if(id.equals("root") && pw.equals("1234")){
			//로그인에 성공을 하면 로그인에 관련된 정보를 세션에 저장
			session.setAttribute("alias", "관리자");
			session.setAttribute("id", "root");
			session.removeAttribute("login");
		}else{
			session.setAttribute("login", "fail");
			//로그인 실패한 페이지로 이동을 하기도 합니다.
			
		}
		
		//결과 페이지로 이동 - 로그인은 리다이렉트로 이동
		//포워딩 : 새로고침 했을 때 작업을 다시 수행
		//리다이렉트 : 새로고침 했을 때 결과 페이지만 새로 고침
		response.sendRedirect("login.jsp");
			
	%>
	

</body>
</html>