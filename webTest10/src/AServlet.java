import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

@WebServlet("/AServlet")
public class AServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		response.sendRedirect("page1.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("page");
		if (StringUtils.equals(action, "goPage2")) {
			String p1q1 = request.getParameter("p1q1");
			String p1q2 = request.getParameter("p1q2");
			request.setAttribute("p1q1", p1q1);
			request.setAttribute("p1q2", p1q2);
			RequestDispatcher view = getServletContext().getRequestDispatcher("/page2.jsp");
			view.forward(request, response);

		} else if (StringUtils.equals(action, "goPage3")) {
			String p1q1 = request.getParameter("p1q1");
			String p1q2 = request.getParameter("p1q2");
			String p2q1 = request.getParameter("p2q1");
			String p2q2 = request.getParameter("p2q2");
			request.setAttribute("p1q1", p1q1);
			request.setAttribute("p1q2", p1q2);
			request.setAttribute("p2q2", p2q1);
			request.setAttribute("p2q2", p2q2);
			RequestDispatcher view = getServletContext().getRequestDispatcher("/page3.jsp");
			view.forward(request, response);

		}
	}

}
