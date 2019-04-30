package controller;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿이 처리할 수 있는 요청 주소를 설정하는 어노테이션
//어노테이션: @로 시작하는 명령어 - 일정한 패턴을 갖는 복잡한 명령어들을 직접
//작성하지 않고 어노테이션으로 대신하기 위해서

//컴파일 할 때는 자바 코드로 변경

//최근의 프로그래밍 언어들이 이러한 어노테이션으로 복잡한 부분을 많이 처리하기 때문에
//개발자 들이 쉽게 애플리케이션을 제작할 수 있습니다.

//서블릿이  처리할 수 있는 요청 주소를 설정하는 어노테이션
@WebServlet("/search")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//생성자 - 인스턴스가 생성될 때 맨 처음 호출되는 메소드
	//인스턴스 변수의 초기화에 주로 이용
    public SearchController() {
        super();
    }

    //초기화 메소드 재정의
    //오버라이딩 할 때는 메소드 이름을 정확하게 작성했는지 확인하기 위해서
    //메소드 이름 위에 @Override를 붙여주는 것이 좋습니다.
    //메소드 이름이 잘못되면 에러 표시가 출
    @Override
    public void init() {
    	System.out.println("초기화 메소드 재정의");
    }
    
    //서블릿이 종료될 때 호출되는 메소드
    @Override
    public void destroy() {
    	System.out.println("종료될 때 호출되는 메소드 재정의");
    }
    
    //생성자 다음으로 호출되는 메소드
    @PostConstruct
    public void first() {
    	System.out.println("생성자 바로 다음에 호출되는 메소드");
    }
    
    //종료될 때 호출되는 메소드
    @PreDestroy
    public void last() {
    	System.out.println("소멸되기 직전에 호출되는 메소드");
    }
    
    
	//get 방식의 요청을 처리하는 메소드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//web에서의 요청 처리
		
		//1.파라미터 읽기
		request.setCharacterEncoding("utf-8");
		String search = request.getParameter("search");
		
		//2. 파라미터에 따른 처리
		String result = "처리 결과";
		
		//3. 결과를 request, session, application에 attribute로 저장
		request.getSession().setAttribute("result", result);
		
		//4. 결과 페이지로 이동
		response.sendRedirect("output.jsp");
	}
	
	//post 방식의 요청을 처리하는 메소드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post 방식의 처리를 doGet 메소드에게 위임 - delegation 
		doGet(request, response);
	}

}
