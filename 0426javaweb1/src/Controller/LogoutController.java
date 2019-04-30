package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LogoutController() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//로그아웃 처리 - 세션을 삭제
		request.getSession().invalidate();
		//로그아웃 결과 페이지로 이동
		response.sendRedirect("logout.html");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
