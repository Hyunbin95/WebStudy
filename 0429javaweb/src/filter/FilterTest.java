package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//필터나 서블릿은 클래스 위치나 이름과는 전혀 상관없이 동작합니다.
//매핑 URL 패턴이 중요합니다.

@WebFilter("*.do")
public class FilterTest implements Filter {


    public FilterTest() {
        // TODO Auto-generated constructor stub
    }

    //필터 인스턴스가 소멸될 때 호출될 메소드
	public void destroy() {
		// TODO Auto-generated method stub
	}

	//서블릿이 처리하기 전이나 후에 호출되는 메소드
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		//서블릿이 처리하기 전에 수행하는 부분
		System.out.println("필터1");
		//이 부분에 많이 작성하는 코드는 로그기록, 유효성 검사 등입니다.
		//파라미터 인코딩 설정도 여기서 하는 경우가 많습니다.
		
		//유효성 검사를 한 후 유효성 검사를 통과하지 못하면 다른 페이지로 이
		//request 와 response를 사용할 때는 형 변환 해서 사용
		//hello.do 요청이 오면 index.do 로 리다이렉트
		HttpServletRequest reg = (HttpServletRequest)request;
		String requestURI = reg.getRequestURI();
		String contextPath = reg.getContextPath();
		String command =
				requestURI.substring(contextPath.length() + 1);
		if(command.equals("hello.do")) {
			((HttpServletResponse)response).sendRedirect("index.do");
		}
		chain.doFilter(request, response);
		//서블릿이 요청을 처리한 후에 수행되는 부분
		//데이터 변환 작업을 많이 합니다.
		System.out.println("필터2");
	}

	//필터 인스턴스가 만들어 질 때 호출되는 메소드
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
