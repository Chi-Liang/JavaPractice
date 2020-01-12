
import java.io.IOException;
import java.io.InputStream;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AServlet
 */
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

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String aaa = request.getParameter("name");
		String bbb = request.getParameter("id");
		String action = request.getParameter("action");
		if ("doPost".equals(action)) {
			this.doPost(request, response);
		} else if ("doDelete".equals(action)) {
			this.doDelete(request, response);
		} else if ("doHead".equals(action)) {
			this.doHead(request, response);
		} else if ("doPut".equals(action)) {
			this.doPut(request, response);
		}
		response.getWriter().write(aaa + " " + bbb);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("userName");
		// String[] userInterest = request.getParameterValues("userInterest");
		// String userInterests = "";
		// int a = userInterest.length;
		// int b = 0;
		// for (String str : userInterest) {
		// // if (b == a - 1) {
		// // userInterests += str;
		// // } else {
		// // userInterests += str + ",";
		// // }
		// userInterests += (b == a - 1) ? str : str + ",";
		//
		// b++;
		// }
		//
		// for (int i = 0; i < a; i++) {
		// if (i == a - 1) {
		// userInterests += userInterest[i];
		// } else {
		// userInterests += userInterest[i] + ",";
		// }
		// }

		// userInterests = userInterests.substring(0, userInterests.length() - 1);
		response.getWriter().write("doPost...");
	}

	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String userName = req.getParameter("userName");
		resp.getWriter().write("doDelete...");
	}

	@Override
	protected void doHead(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		arg1.getWriter().write("doHead...");
	}

	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String name = req.getParameter("name");
		System.out.println(email + " " + name);
		// String body = inputStreamToString(req.getInputStream());

		// resp.getWriter().write("doPut...");

	}

	private static String inputStreamToString(InputStream inputStream) {
		Scanner scanner = new Scanner(inputStream, "UTF-8");
		return scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
	}

}
