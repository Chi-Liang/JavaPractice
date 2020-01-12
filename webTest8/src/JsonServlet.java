

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

import net.sf.json.JSONArray;
import webTest8.PersonVO;

/**
 * Servlet implementation class JsonServlet
 */
@WebServlet("/JsonServlet")
public class JsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JsonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(StringUtils.equals(action, "getInit")) {
			response.sendRedirect("jsonPage.jsp");
		}else if(StringUtils.equals(action, "jsonGet")) {
			Map<String, String> map1 = new HashMap<String, String>();
			map1.put("aaa", "111");
			map1.put("bbb", "222");
//			JSONObject jsonObject = new JSONObject(map1);
			JSONArray aa = JSONArray.fromObject(map1);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			System.out.println(aa.toString());
			response.getWriter().write(aa.toString());
		}else if(StringUtils.equals(action, "jsonGetModel")) {
			List<PersonVO> list = new ArrayList<PersonVO>();
			voProcess(list);
			
			JSONArray aa = JSONArray.fromObject(list);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			System.out.println(aa.toString());
			response.getWriter().write(aa.toString());
		}
	
	}

	private void voProcess(List<PersonVO> list) {
		
		PersonVO personVO = new PersonVO();
		personVO.setId("111");
		personVO.setName("aaa");
		personVO.setSex("M");
		list.add(personVO);
		
		personVO = new PersonVO();
		personVO.setId("222");
		personVO.setName("bbb");
		personVO.setSex("F");
		list.add(personVO);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
