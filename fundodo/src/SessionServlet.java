import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		String checkSession = "";
		if(session != null) {
			String name = (String)session.getAttribute("name");
		    if(name != null) {
		      checkSession= "Y";
		    }else {
		      checkSession = "N";
		    }
		}else {
			checkSession = "N";
		}
	     
	     String result = "{\"result\":\"" + checkSession + "\"}";
	     response.getWriter().append(result);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		HttpSession session=request.getSession(false);
		if(session != null) {
			session.invalidate();
		}
		response.getWriter().append("clean session success");
	}

}
