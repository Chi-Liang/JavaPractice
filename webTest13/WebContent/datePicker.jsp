<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="jqueryUI/jquery-ui.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="jqueryUI/jquery-ui.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#test").datepicker({dateFormat:'yy-mm-dd'});
	$("#aaa").hide();
	 $("button").click(function(){
		 var aa = $("#test").val();
		 $("#aaa").html(aa).show();
	});
	
})

</script>
</head>
<body>
<input type="text" id="test" />
<button>click me</button>
<div id="aaa" ></div>
</body>
</html>