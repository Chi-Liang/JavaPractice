import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/ComboboxServlet")
public class ComboboxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// response.getWriter().append("Served at: ").append(request.getContextPath());

		Writer out = response.getWriter();

		List<String> comboboxList = new ArrayList<String>();
		comboboxList.add("AppleScript");
		comboboxList.add("BASIC");
		comboboxList.add("ColdFusion");
		comboboxList.add("Perl");
		comboboxList.add("Scala");

		String json = new Gson().toJson(comboboxList);
		out.write(json);
		out.flush();
	}

}
