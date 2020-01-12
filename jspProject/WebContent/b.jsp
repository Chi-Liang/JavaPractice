<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import="com.ServletVo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	List<ServletVo> list = new ArrayList<ServletVo>();
    ServletVo vo = new ServletVo();	 
    vo.setText("蘋果");
    vo.setValue("apple");
    list.add(vo);
    vo = new ServletVo();
    vo.setText("香蕉");
    vo.setValue("banana");
    list.add(vo);
    vo = new ServletVo();
    vo.setText("橘子");
    vo.setValue("orange");
    list.add(vo);
	
	request.setAttribute("list", list);   
    
%>

</head>
<body>
<table>
	<tr>
		<td>
			<select id="fruit">
			 <c:forEach  items="${list}"  var="item"  >
			 	<c:choose>
			 		<c:when test = "${item.value == 'orange'}">  
			 			<option value="${item.value}" selected="selected" >${item.text}</option>
                    </c:when>
			 		<c:otherwise>  
			 			<option value="${item.value}" >${item.text}</option>
                    </c:otherwise>
			 	</c:choose>
			 
              </c:forEach>
			</select>
		</td>
	</tr>

</table>


</body>
</html>

