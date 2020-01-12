package listener;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.quartz.SchedulerException;
import org.quartz.impl.StdScheduler;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;


public class ListenerTest implements HttpSessionListener, ServletRequestListener, ServletContextListener {

	Log log = LogFactory.getLog(getClass()); 
	private static ApplicationContext APP_CONTEXT;
	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		ServletContext servletContext = arg0.getServletContext();
		log.info("即將關閉:" + servletContext.getContextPath());
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {

	   System.out.println("Start - ScheduleController");
	   new ClassPathXmlApplicationContext("Spring-Quartz.xml");
		 
		ServletContext servletContext = arg0.getServletContext();
		log.info("即將啟動:" + servletContext.getContextPath());

	}
	
	public StdScheduler getScheduleController() {
        StdScheduler bean = null;
        bean = (StdScheduler) APP_CONTEXT.getBean("scheduleController", StdScheduler.class);
        return bean;
    }

	@Override
	public void requestDestroyed(ServletRequestEvent arg0) {
		
		 HttpServletRequest request =(HttpServletRequest)arg0.getServletRequest();
		 long time =  System.currentTimeMillis()-
				      (Long)(request.getAttribute("dateCreated"));
		 
		 
		  log.info(request.getRemoteAddr() + "時間" + time +"毫秒");
		
	}

	@Override
	public void requestInitialized(ServletRequestEvent arg0) {
		
		  
		  HttpServletRequest request =(HttpServletRequest)arg0.getServletRequest();
		  String uri = request.getRequestURI();
		  uri = request.getQueryString() == null ? uri : (uri+"?"+request.getQueryString());
		  
		  request.setAttribute("dateCreated", System.currentTimeMillis());
		  log.info("IP:" + request.getRemoteAddr() + "請求" + uri);
		  

	}

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {

		HttpSession session = arg0.getSession();
		log.info("新建一個session,ID為:" + session.getId());
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		HttpSession session = arg0.getSession();
		log.info("銷毀一個session,ID為:" + session.getId());

	}

	/**
		 * Constructor of the object.
		 */
	public ListenerTest() {
		super();
	}

	/**
		 * Destruction of the servlet. <br>
		 */

	/**
		 * The doGet method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to get.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
		 * The doPost method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to post.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
		 * Initialization of the servlet. <br>
		 *
		 * @throws ServletException if an error occurs
		 */
	public void init() throws ServletException {
		// Put your code here
	}

}
