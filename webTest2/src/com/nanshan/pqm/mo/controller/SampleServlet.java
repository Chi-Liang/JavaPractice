package com.nanshan.pqm.mo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SampleServlet
 */
@WebServlet("/SampleServlet")
public class SampleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SampleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int a = 10;
		int b = 20;
		request.setAttribute("a", a);
		request.setAttribute("b", b);
		request.setAttribute("Hello", "Hello ");
		request.setAttribute("World", "World!");
		getServletContext().getRequestDispatcher("/view/sample1.jsp").forward(request,response);
	}
}
