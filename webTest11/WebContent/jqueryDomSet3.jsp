<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		var val = $("#test1").attr("disabled");
		if(undefined == val){
			$("#test1").attr("disabled",true);
		}else if("disabled" == val){
			$("#test1").attr("disabled",false);
		}
		
	});
	
});
	
</script>
</head>
<body>
<input type="text" id="test1" value="Mickey" ></p>
<button id="btn1">disabled</button></p>
</body>
</html>