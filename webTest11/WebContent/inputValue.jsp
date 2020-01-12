<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	var a1 = $("#a1").val();
	var a2 = $(":checkbox:disabled").val();
	for (var i = 0; i < a2.length; i++) {
		console.log(a2[i].value);
	}
	console.log(a1);
});
</script>
</head>
<body>
<input type="text" id="a1" value="xxx" disabled="disabled">
<input type="text" id="a2" value="yyy" disabled="disabled">
<input type="checkbox" id="a3" value="ccc" disabled="disabled">
</body>
</html>