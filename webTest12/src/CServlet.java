import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CServlet")
public class CServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().write("doPost...");

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String aaa = req.getParameter("aaa");
		System.out.println("aaa: " + aaa);

		String bbb = req.getParameter("bbb");
		System.out.println("bbb: " + bbb);

		String ccc[] = bbb.split(",");

		for (int i = 0; i < ccc.length; i++) {
			System.out.println(ccc[i]);
		}
		resp.getWriter().write("sucess");
	}

}
