import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

/**
 * Servlet implementation class DServlet
 */
@WebServlet("/DServlet")
public class DServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if(StringUtils.equals(method, "getAllUsers")) {
			this.getAllUsers();
			
		}else if (StringUtils.equals(method, "getUser")) {
			this.getUser();
			
		}else if (StringUtils.equals(method, "createUser")) {
			this.createUser();
			
		}else if (StringUtils.equals(method, "updateUser")) {
			this.updateUser();
			
		}else if (StringUtils.equals(method, "deleteUser")) {
			this.deleteUser();
		}
		
	}
	
	private void getAllUsers() {
		System.out.println("getAllUsers");
	}
	
	private void getUser() {
		System.out.println("getUser");
	}
	
	private void createUser() {
		System.out.println("createUser");
	}
	
	private void updateUser() {
		System.out.println("updateUser");
	}
	
	private void deleteUser() {
		System.out.println("deleteUser");
	}

}
