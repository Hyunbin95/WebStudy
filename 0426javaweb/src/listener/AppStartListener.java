package listener;

import javax.servlet.AsyncEvent;
import javax.servlet.AsyncListener;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionIdListener;
import javax.servlet.http.HttpSessionListener;


@WebListener
public class AppStartListener implements ServletContextListener {

    public AppStartListener() {
        // TODO Auto-generated constructor stub
    }

    public void contextInitialized(ServletContextEvent arg0)  { 
        	System.out.println("웹 애플리케이션 시작");
    }


    public void contextDestroyed(ServletContextEvent arg0)  { 
         	System.out.println("웹 애플리케이션 종료");
    }
}

