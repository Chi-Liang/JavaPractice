package com.nanshan.pqm.mo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nanshan.pqm.mo.vo.SelectListVo;
import com.nanshan.pqm.mo.vo.SelectVo;

/**
 * Servlet implementation class SelectFormBackendServlet
 */
@WebServlet("/SelectFormBackendServlet")
public class SelectFormBackendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectFormBackendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("sample1")) {
			String aa[][] = {{"A","1"},{"B","2"}};
			request.setAttribute("a", aa);
			getServletContext().getRequestDispatcher("/view/select/a1.jsp").forward(request,response);
		}else if(action.equals("sample2")) {
			List<HashMap<String,String>> data = new ArrayList<HashMap<String,String>>();
			HashMap<String,String> map1 = new HashMap<String,String>(); 
			map1.put("text","K");
			map1.put("value","1");
			
			HashMap<String,String> map2 = new HashMap<String,String>(); 
			map2.put("text","B");
			map2.put("value","2");
			
			HashMap<String,String> map3 = new HashMap<String,String>(); 
			map3.put("text","C");
			map3.put("value","3");
			
			data.add(map1);
			data.add(map2);
			data.add(map3);
			
			request.setAttribute("a", data);
			getServletContext().getRequestDispatcher("/view/select/a2.jsp").forward(request,response);
		}else if(action.equals("sample3")) {
			List<SelectVo> aa = new ArrayList<SelectVo>();
			SelectVo selectVo = new SelectVo();
			selectVo.setText("C");
			selectVo.setValue("1");
			aa.add(selectVo);
			
			selectVo = new SelectVo();
			selectVo.setText("B");
			selectVo.setValue("2");
			aa.add(selectVo);
			
			selectVo = new SelectVo();
			selectVo.setText("C");
			selectVo.setValue("3");
			aa.add(selectVo);
			
			request.setAttribute("a", aa);
			getServletContext().getRequestDispatcher("/view/select/a3.jsp").forward(request,response);
		}else if(action.equals("sample4")) {
			SelectListVo selectListVo = new SelectListVo();
			selectListVo.setText("A");
			selectListVo.setValue("1");
			
			selectListVo.getAa().add(selectListVo);
			
			SelectListVo selectListVo1 = new SelectListVo();
			selectListVo1.setText("B");
			selectListVo1.setValue("2");
			selectListVo.getAa().add(selectListVo1);
			
			SelectListVo selectListVo2 = new SelectListVo();
			selectListVo2.setText("C");
			selectListVo2.setValue("3");
			selectListVo.getAa().add(selectListVo2);
			
			request.setAttribute("a", selectListVo);
			getServletContext().getRequestDispatcher("/view/select/a4.jsp").forward(request,response);
		}else if(action.equals("sample5")) {
			SelectListVo selectListVo = new SelectListVo();
			selectListVo.setText("A");
			selectListVo.setValue("1");
			
			selectListVo.getAa().add(selectListVo);
			
			SelectListVo selectListVo1 = new SelectListVo();
			selectListVo1.setText("B");
			selectListVo1.setValue("2");
			selectListVo.getAa().add(selectListVo1);
			
			SelectListVo selectListVo2 = new SelectListVo();
			selectListVo2.setText("C");
			selectListVo2.setValue("3");
			selectListVo.getAa().add(selectListVo2);
			
			request.setAttribute("a", selectListVo);
			getServletContext().getRequestDispatcher("/view/select/a4.jsp").forward(request,response);
		}
	}
}
