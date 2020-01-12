package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AModel;
import service.AService;

/**
 * Servlet implementation class AServlet
 */
@WebServlet("/AServlet")
public class AServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String chineseName = request.getParameter("cn");
		String englishNmae = request.getParameter("en");
		
		
		AService aService = new AService();
		AModel value = aService.getStr(chineseName,englishNmae);
		
		request.setAttribute("value", value);
		
		RequestDispatcher requestDispatcher =
			    request.getRequestDispatcher("/b.jsp");
			requestDispatcher.forward(request, response);
//		Adao adao = new Adao();
//		String value = adao.getStr();
//		System.out.println(value);
//		response.getWriter().append("Served at: ").append(request.getContextPath() + "*****"+value);
	}

}
