<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn2").click(function(){
		 var a = $("#sel1").find("option:selected").text();
		 
	 });
});
</script>
</head>
<body>
	
<select id="sel1" style="width: 50px;">
<option value="A1">A</option>
<option value="B1">B</option>
<option value="C1">C</option>
<option value="D1">D</option>
</select></br></br>

<button id="btn2">click me 2</button>	
</body>
</html>