package com.nanshan.pqm.mo.controller;
import java.io.IOException;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nanshan.pqm.mo.vo.Hobby;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public MainServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config, HttpServletResponse response) throws ServletException {
		System.out.println("1111111111");
	}		
	
//	String action = request.getParameter("action");	// ����ʧ@�N�X
//	
//	try{
//		if(action.equals("changPageRD")){
//			pageChangRD(request, response);
//		}else if(action.equals("changPage")){
//			pageChang(request, response);
//		}
//	}catch(Exception ex){
//		request.setAttribute("exception",ex);
//		request.getRequestDispatcher("../errorPage.jsp").forward(request,response);			
//	}	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String action = request.getParameter("action");
		if(action.equals("getInit")) {
			response.sendRedirect("view/getPage1.jsp");
		}else if(action.equals("postInit")) {
			response.sendRedirect("view/postPage1.jsp");
		}
		else if(action.equals("getPage2")) {
			String id = request.getParameter("myname");
			String password = request.getParameter("passwd");
			String sex = request.getParameter("sex");
			String[] hobby = request.getParameterValues("ch1");
			
			System.out.println("id: " + id);
			System.out.println("password: " + password);
			System.out.println("sex: " + sex);
			
			System.out.println("hobby: " +Arrays.toString(hobby));
			
			
			request.setAttribute("id", id);
			request.setAttribute("password", password);
			request.setAttribute("sex", sex);
			request.setAttribute("hobby", Arrays.toString(hobby));
			
			Hobby hobbyVO = new Hobby();
			hobbyVO.setId(id);
			hobbyVO.setPassword(password);
			hobbyVO.setSex(sex);
			hobbyVO.setHobby(Arrays.toString(hobby));
			request.setAttribute("hobbyVO", hobbyVO);
			
			RequestDispatcher view = getServletContext().getRequestDispatcher("/view/getPage2.jsp"); 
			view.forward(request,response); 
		}
		
		//id22 passwd22 sex
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("myname");
		String password = request.getParameter("passwd");
		String sex = request.getParameter("sex");
		String[] hobby = request.getParameterValues("ch1");

		System.out.println("id: " + id);
		System.out.println("password: " + password);
		System.out.println("sex: " + sex);

		System.out.println("hobby: " + Arrays.toString(hobby));

		// request.setAttribute("id1", id);
		// request.setAttribute("password", password);
		// request.setAttribute("sex", sex);
		// request.setAttribute("hobby", Arrays.toString(hobby));

		Hobby hobbyVO = new Hobby();
		hobbyVO.setId(id);
		hobbyVO.setPassword(password);
		hobbyVO.setSex(sex);
		hobbyVO.setHobby(Arrays.toString(hobby));
		request.setAttribute("hobbyVO", hobbyVO);

		RequestDispatcher view = getServletContext().getRequestDispatcher("/view/postPage2.jsp");
		view.forward(request, response);
	}
}
