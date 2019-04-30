package listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


@WebListener
public class AppSessionListener implements HttpSessionListener {
	
	public static int count;

    public AppSessionListener() {
    	System.out.println("생성");
    }

    //세션이 만들어질 때
    public void sessionCreated(HttpSessionEvent arg0)  { 
         System.out.println("세션이 생성되었습니다.");
         count = count + 1;
         System.out.println("현재 접속자 수:" + count);
    }

    //세션이 소멸될 
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
         System.out.println("세션이 제거되었습니다.");
         count = count - 1;
         System.out.println("현재 접속자 수:" + count);
    }
	
}
