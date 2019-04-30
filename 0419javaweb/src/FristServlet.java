

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FristServlet
 */
@WebServlet("/FristServlet")
public class FristServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public FristServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//문서의 타입 생성
		response.setContentType("text/html");
		//인코딩 설정
		response.setCharacterEncoding("utf-8");
		//HTML 출력을 위한 객체를 생성
		PrintWriter out = response.getWriter();
		//출력할 내용 설정
		out.write("<html><head><tltle>Create Servlet</title><head>");
		out.write("<body>My First Servlet Class</body></html>");
		out.close();
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
