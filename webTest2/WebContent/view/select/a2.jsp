<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var items = [];

function aaa(){
	var result = "";
	<%
	   List<HashMap<String,String>>select=(ArrayList<HashMap<String,String>>)request.getAttribute("a");
	   for(HashMap<String,String> selectValue:select){
		%>
		result = result +"<%=selectValue.get("text")%>"+" "+"<%=selectValue.get("value")%>"+"</p>";
		items.push(["<%=selectValue.get("text")%>","<%=selectValue.get("value")%>"]);
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