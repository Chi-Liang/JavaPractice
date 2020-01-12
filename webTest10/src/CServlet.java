

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

/**
 * Servlet implementation class CServlet
 */
@WebServlet("/CServlet")
public class CServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(StringUtils.equals(action, "init")) {
			response.sendRedirect("ajaxGetUrlMethod.jsp");
		}else if (StringUtils.equals(action, "initGet")) {
			response.getWriter().write("11111111");
		}else if (StringUtils.equals(action, "initPost")) {
			response.sendRedirect("ajaxPostMethod.jsp");
		}
		else if (StringUtils.equals(action, "initPut")) {
			response.sendRedirect("ajaxPutMethod.jsp");
		}else if (StringUtils.equals(action, "initDelete")) {
			response.sendRedirect("ajaxDeleteMethod.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//fname=Henry&lname=Ford
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		System.out.println(fname);
		System.out.println(lname);
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String aaa = req.getParameter("aaa");
		System.out.println(aaa);
		resp.getWriter().write("11111111");
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String aaa = req.getParameter("aaa");
		System.out.println("delete " + aaa);
		resp.getWriter().write("11111111");
	}

}
