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
	
    String start = "<option value=";
    String end = "</option>";
    
    String select1 = "";
    
    for(ServletVo v :list){
    	select1 += start + v.getValue() + ">" + v.getText() + end; 
    }
    
%>

<script type="text/javascript">
function aaa(){
	document.getElementById("fruit").innerHTML = "<%=select1%>";
}
</script>

</head>
<body onload="aaa();">
<table>
	<tr>
		<td>
			<select id="fruit">
			</select>
		</td>
	</tr>

</table>


</body>
</html>

