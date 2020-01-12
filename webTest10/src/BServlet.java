import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

@WebServlet("/BServlet")
public class BServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(StringUtils.equals(action, "init")) {
			response.sendRedirect("getUrlMethod.jsp");
		}else if (StringUtils.equals(action, "getUrlMethod")) {
			String p1q1 = request.getParameter("p1q1");
			String p1q2 = request.getParameter("p1q2");
			System.out.println(p1q1);
			System.out.println(p1q2);
			response.sendRedirect("page1.jsp");
		}else if (StringUtils.equals(action, "postInit")) {
			response.sendRedirect("postUrlMethod.jsp");
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String p1q1 = request.getParameter("p1q1");
		String p1q2 = request.getParameter("p1q2");
		System.out.println(p1q1);
		System.out.println(p1q2);
	}

}
