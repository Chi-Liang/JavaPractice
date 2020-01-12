<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var images = [];

function init(){
	<%
		String[][] a = (String[][])request.getAttribute("a");
		String text = "";
		String value = "";
		for(int i =0;i<a.length;i++ ){
			text = a[i][0];
			value = a[i][1];
		%>
		images.push(["<%=text%>","<%=value%>"]);
		<%	
		}
		out.println("for (var i = 0; i < images.length; i++) {");
		out.println("console.log(images[i][0]+\" \"+images[i][1]);");
		out.println("}");
	
	%>
    let obj = document.getElementById("number"); 
	
	for ( let val in images) {
		obj.add(new Option(images[val][0],images[val][1]));
	}
	//for (var i = 0; i < images.length; i++) {
	//	console.log(images[i][0]+" "+images[i][1]);
	//}
	
}
</script>
</head>
<body onload="init();">
<div style="margin: 30px;float: left;">
	<select name="number" id="number" style="font-size: 26px;" onchange="printValue();">
	</select>
</div>
</body>
</html>