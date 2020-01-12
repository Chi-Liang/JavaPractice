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
	$("button").click(function(){
		$("#w3s").attr("href","http://www.yahoo.com.tw");
	});
	
});
	
</script>
</head>
<body>
<a href="http://w3schools.com" id="w3s">W3S</a></p>

<button>change href value</button>
</body>
</html>