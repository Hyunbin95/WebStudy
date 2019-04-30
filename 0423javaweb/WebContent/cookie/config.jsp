<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>언어설정 페이지</title>
</head>
<body>
	<!-- 쿠키를 확인해서 영문과 한글을 선택해서 출력 -->
	<%
		//모든 쿠키를 가져와서 language라는 이름으로 만들어진 쿠키의 값을
		//language라는 변수에 저장
		//기본값은 korean

		String language = "korean";

		//쿠키를 전부 가져오기
		Cookie[] cookies = request.getCookies();
		//쿠키가 있으면 language라는 이름의 쿠키를 조회해서 그 쿠키에 저장된 값을 language라는 변수에 저장
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("language")) {
					language = cookie.getValue();
				}
			}
		}
		//쿠키에 값에 따라 출력 내용을 설정
		//내용이 많으면 jsp:include 나 include 디렉티브를 이
		if (language.equals("korean")) {
			out.println("<h3>한국어</h3>");
		} else {
			out.println("<h3>english</h3>");
		}
	%>


	<form action="process.jsp">
	<!-- 라디오 버튼 만들기 : 쿠키 값에 따라 체크 여부를 설정 -->
		<input type="radio" name="language" value="korean"
			<%if (language.equals("korean")) {
				out.println("checked");
			}%> />한국어 <input
			type="radio" name="language" value="english"
			<%if (language.equals("english")) {
				out.println("checked");
			}%> />영어 <input
			type="submit" value="언어처리" />
	</form>
</body>
</html>