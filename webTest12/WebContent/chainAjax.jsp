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
	var url2 = "BBBServlet";
	var url3 = "CCCServlet";
	
	var promise1 = $.ajax(url1).then(function(data){
		alert("first:"+data);
		return $.ajax(url2+"?bbb="+data);
	}).then(function(data){
		alert("second:"+data);
		return $.ajax(url3+"?ccc="+data);
	}).then(function(data){
		alert("third:"+data);	
		return data;
	}).done(function(data){
		alert("third:"+data);		
	}).fail(function(data){
		alert("fail");		
	}).always(function(data){
		alert("fail");		
	});
	
	
	
	
	
	
	
/*	var promise1 = $.ajax(url1);
	var promise2 = promise1.then(function(data){
		alert("first:"+data);
		return $.ajax(url2+"?bbb="+data);
	});
	var promise3 = promise2.then(function(data){
		alert("second:"+data);
		return $.ajax(url3+"?ccc="+data);
	});
	promise3.done(function(data){
		alert("third:"+data);		
	});
	
	promise3.fail(function(data){
		alert("fail");		
	});*/
	
});
</script>
</head>
<body>

</body>
</html>