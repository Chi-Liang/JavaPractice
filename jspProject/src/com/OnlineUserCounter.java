package com;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class OnlineUserCounter
 *
 */
@WebListener
public class OnlineUserCounter implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		ServletContext sc = se.getSession().getServletContext();
		Integer count = (Integer) sc.getAttribute("count");
		if (count == null) {
			sc.setAttribute("count", 1);
		}
		sc.setAttribute("count", ++count);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		ServletContext sc = se.getSession().getServletContext();
		Integer count = (Integer) sc.getAttribute("count");
		if (count == null) {
			sc.setAttribute("count", 1);
		}
		sc.setAttribute("count", --count);

	}
}
