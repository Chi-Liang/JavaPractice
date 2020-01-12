<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<style type="text/css">
.aaa{
	width: 300px;
	height: 60px;
	border: 3px #cccccc dashed;
}

</style>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		$("#test1").text("Hello");
	});
	
	$("#btn2").click(function(){
		$("#test2").html("<b>Hello</b>");
	});
	
	$("#btn3").click(function(){
		$("#test3").val("Hello");
	});
	
});
	
</script>
</head>
<body>
<p id="test1">xxxxxxxxxx</p>
<p id="test2">yyyyyyyyyy</p>
<input id="test3" type="text" value="zzzzzzzz"></p>
<button id="btn1">Text</button>
<button id="btn2">Html</button>
<button id="btn3">Value</button>
</body>
</html>