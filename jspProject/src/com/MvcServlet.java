package com;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MvcServlet
 */
@WebServlet("/MvcServlet")
public class MvcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MvcServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		String name = request.getParameter("name");
		String id = request.getParameter("id");

		if ("login".equals(action)) {
			response.sendRedirect("login.jsp");
		} else if ("show".equals(action)) {
			this.sessionMethod(request, name, id);
			response.sendRedirect("show.jsp");
		} else if ("showDetail".equals(action)) {
			response.sendRedirect("showDetail.jsp");
		} else if ("logout".equals(action)) {
			response.sendRedirect("logout.jsp");
		}

	}

	private void sessionMethod(HttpServletRequest request, String name, String id) {
		String age = "";
		String sex = "";

		if ("abc".equals(id)) {
			age = "40";
			sex = "male";
		}

		request.getSession().setAttribute("id", id);
		request.getSession().setAttribute("name", name);
		request.getSession().setAttribute("age", age);
		request.getSession().setAttribute("sex", sex);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
