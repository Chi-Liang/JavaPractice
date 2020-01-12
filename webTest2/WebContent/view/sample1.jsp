<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function init(){
	var c = 0;
	var result =  "";
	
	<%
		int aa = (Integer)request.getAttribute("a");
		int bb = (Integer)request.getAttribute("b");
		String front = (String)request.getAttribute("Hello");
		String backend = (String)request.getAttribute("World");
	%>
	var a = <%=aa%>;
	var b = <%=bb%>;
	c = a+b;
	document.getElementById("result1").innerHTML=c;
	
	var front = "<%=front%>";
	var backend = "<%=backend%>";
	result = front + backend;
	document.getElementById("result2").innerHTML=result;
}
</script>
</head>
<body onload="init();">
<label style="margin: 30px;float: left; font-size: 26px">這是txt</label>
<div id="result1" style="margin: 30px;float: left; font-size: 26px"></div>

<label style="margin: 30px;float: left; font-size: 26px">這是txt</label>
<div id="result2" style="margin: 30px;float: left; font-size: 26px"></div>
</body>
</html>