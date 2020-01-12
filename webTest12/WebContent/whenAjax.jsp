<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<script>
$(document).ready(function(){
	
	var url1 = "AAAServlet?aaa=111";
	var url2 = "99BBBServlet?bbb=222";
	var url3 = "CCCServlet?ccc=333";
	
//	var promise1 = $.ajax(url1);
//	var promise2 = $.ajax(url2);
//	var promise3 = $.ajax(url3);
	
	$.when($.ajax(url1),$.ajax(url2),$.ajax(url3)).done(function(param1,param2,param3){
		alert("都成功");
		
	}).fail(function(param1,param2,param3){
		alert("失敗");
	}).always(function(param1,param2,param3){
		alert("失敗");
	});
	
/*	$.when(promise1,promise2,promise3).fail(function(param1,param2,param3){
		alert("都成功");
		
	});*/
});
</script>
</head>
<body>

</body>
</html>