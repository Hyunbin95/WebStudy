<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java web Programming</title>
</head>
<body>
	<%@ page import= "java.io.*, java.util.*"%>
	<%
		//초기화 파라미터 가져오기
		String db = application.getInitParameter("db");
		String url = application.getInitParameter("url");
		
		//application의 log 메소드를 이용한 로그 기록
		//application.log("로그 기록");
		
		//파일에 문자열 기록 - java.io 패키지를 이용
		
		//오늘 날짜 구하기
		Date today = new Date();
		//현재 년도
		int year = today.getYear() + 1900;
		//현재 월
		int month = today.getMonth() + 1;
		//현재 일
		int day = today.getDay() ;
		//위 3개의 정수를 가지고 파일명 만들기
		String fileName = String.format("%04d%02d%02d.txt",year,month,day);
		
		//로그 파일 기록할 경로 만들기 - 절대 경로 이용
		/*
		String logPath =
			"/Users/a503_12/Documents" + "/" + fileName;
		*/
		
		//로그 파일 기록할 경로 만들기 - 상대 경로 이용
		//WebContent 디렉토리 안에 logs 디렉토리를 이용
		//logs 디렉토리가 먼저 만들어져 있어야 합니다.
		//getRealPath()는 동적으로 디렉토리 생성 못함
		
		String realPath = application.getRealPath("/logs");
		String logPath = realPath + "/" + fileName;
		
		//파일에 기록을 하기 위한 InputStream 객체 만들기
		FileOutputStream fos =
			new FileOutputStream(logPath, true);
		//파일에 문자열을 기록하기 위한 Stream을 생성
		//파일에 직접 기록하면 입출력횟수가 늘어나서 효율이 떨어지게 됩니다.
		//파일에 기록을 하거나 읽어올 때 Buffer를 이용합니다.
		PrintWriter pw = 
			new PrintWriter(fos);
		pw.println(
			today.toString() + "-" +
				request.getRemoteAddr());
		pw.flush();
		//파일을 닫지 않으면 기록이 안됨
		pw.close();
		
	%>
	
	db:<%=db %><br />
	url:<%=url %><br />
</body>
</html>