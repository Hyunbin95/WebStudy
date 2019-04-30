package listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


@WebListener
public class SessionListenerImpl implements HttpSessionListener {
	public static int cnt;

    public SessionListenerImpl() {
        
    }

    public void sessionCreated(HttpSessionEvent arg0)  { 
        cnt = cnt + 1;
        System.out.println("세션 증가 : " + cnt);
    }


    public void sessionDestroyed(HttpSessionEvent arg0)  { 
        cnt = cnt - 1;
        System.out.println("세션 감소 : " + cnt);
    }
	
}
