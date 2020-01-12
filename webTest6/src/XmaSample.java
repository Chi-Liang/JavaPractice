import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webTest6.Jto;
import webTest6.ReadXmlProcess;

/**
 * Servlet implementation class XmaSample
 */
@WebServlet("/XmaSample")
public class XmaSample extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public XmaSample() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("getInit")) {
			response.sendRedirect("getPage1.jsp");
		}else if(action.equals("JdomProcess")) {
			ReadXmlProcess readXmlProcess = new ReadXmlProcess();
			Jto jto = new Jto();
			jto = readXmlProcess.parseMain();
			request.setAttribute("jto", jto);
			RequestDispatcher view = getServletContext().getRequestDispatcher("/getPage2.jsp"); 
			view.forward(request,response); 
			
		}else if(action.equals("aaa")) {
			PrintWriter out =response.getWriter();
			out.println("1111111111");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
