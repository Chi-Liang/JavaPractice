<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		var text1 = "<b>append text 111</b></p>"
		var text2 = "<b>append text 222</b></p>"
		var text3 = "<b>append text 333</b></p>"
		
		$("p").append(text1,text2,text3);
	  });
});
</script>
</head>
<body>
<p></p>
<button id="btn1">append text</button>
</body>
</html>