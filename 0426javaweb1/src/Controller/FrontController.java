package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontController
 */
@WebServlet({ "/login", "/logout" })
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FrontController() {
        super();
        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//컨텍스트 경로 가져오기 - 애플리케이션 이름
		String contextPath = request.getContextPath();
		//클라이언트 요청 경로
		String requestURI = request.getRequestURI();
		//requestURI의 공통된 부분 제거
		String command = requestURI.substring(contextPath.length() + 1);
		
		//2개의 요청을 라우링해서 처리
		switch(command) {
		case "login":
			//파라미터를 읽어오기
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			//처리
			boolean result = 
					id.equals("root") && pw.equals("1234");
			//결과에 따라 페이지 이동
			if(result == true) {
				//필요한 정보를 저장하고 결과 페이지로 이동
				request.getSession().setAttribute("id", id);
				//최근에는 보안 문제때문에 누구 인지를 유추할 수 있는 데이터를
				//출력하는 것을 금지하기 때문에 별명을 많이 사용
				request.getSession().setAttribute("nickname", "nickname");
				//로그인 성공 여부를 저장
				request.getSession().setAttribute("result", "success");
				
				response.sendRedirect("loginsuccess.jsp");
			}else {
				//로그인 성공 여부를 저장
				request.getSession().setAttribute("result", "fail");
				//이전에 저장한 id 와 nickname 삭제
				request.getSession().removeAttribute("nickname");
				request.getSession().setAttribute("id", null);
				
				response.sendRedirect("login.jsp");
			}
			break;
		case "logout":
			//로그아웃 처리 - 세션을 삭제
			request.getSession().invalidate();
			//로그아웃 결과 페이지로 이동
			response.sendRedirect("logout.html");
			break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

