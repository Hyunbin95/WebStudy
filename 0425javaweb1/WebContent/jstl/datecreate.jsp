<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.*" %>
<%
	Calendar cal = new GregorianCalendar();
	Date date = new Date(cal.getTimeInMillis());
	
	//데이터를 전달하기 위해서 저장
	request.setAttribute("date", date);
	request.setAttribute("num",19000);
	//결과 페이지로 포워딩
	RequestDispatcher dispatcher =
		request.getRequestDispatcher("datedisplay.jsp");
	dispatcher.forward(request, response);
	
	
	// <jsp:forward url="datedisplay.jsp" /> 
%>


<%-- <jsp:forward url="datedisplay.jsp" --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜를 만들어서 넘겨주는 페이지</title>
</head>
<body>

</body>
</html>



