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
	$("button").click(function(){
		var attr1 = $("#div1").attr("style");
		var attr2 = $("#div1").css("width");
		var attr3 = $("#div1").attr("class");
		alert(attr3);
	 });
	
});
	
</script>
</head>
<body>
<div id="div1" style="width: 300px;height: 60px;border: 3px #cccccc dashed" class="aaa"></div>
<button>click me</button>
</body>
</html>