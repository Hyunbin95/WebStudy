package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javafx.scene.control.Alert;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라미터를 읽어오기
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		//처리
		boolean result =
				id.contentEquals("root") && pw.contentEquals("1234");
		
		//결과에 따라 페이지 이동
		if(result == true) {
			//필요한 정보를 저장하고 결과 페이지로 이동
			request.getSession().setAttribute("id", id);
			//최근에는 보안 문제 때문에 누구 인지를 유추할 수 있는 데이터를
			//출력하는 것을 금지하기 때문에 별명을 많이 사용
			request.getSession().setAttribute("nickname", "별명");
			//로그인 성공 여부 저장
			request.getSession().setAttribute("result", "success");
			
			response.sendRedirect("loginsuccess.jsp");
		}else {
			//로그인 성공 여부 저장
			request.getSession().setAttribute("result", "fail");
			//이전에 저장한 id  nickname 삭제
			request.getSession().removeAttribute("nickname");
			request.getSession().setAttribute("id",null);
			
			response.sendRedirect("login.jsp");
			
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
