<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="com.nanshan.pqm.mo.vo.SelectVo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function aaa(){
	var items = [];	
<%
List<SelectVo> aa =(ArrayList<SelectVo>)request.getAttribute("a");
for(SelectVo val:aa){
	%>
	items.push(["<%=val.getText()%>","<%=val.getValue()%>"]);	
	<%
}

%>	
	

let obj = document.getElementById("number"); 

for ( let val in items) {
	obj.add(new Option(items[val][0],items[val][1]));
}
}
</script>
</head>
<body onload="aaa();">
<div style="margin: 30px;float: left;">
	<select name="number" id="number" style="font-size: 26px;" onchange="printValue();">
	</select>
</div>
</body>
</html>