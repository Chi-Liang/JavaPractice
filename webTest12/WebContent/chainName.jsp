<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	var defered = $.Deferred();
	
/*	var promise1 = defered.then(function(data){
		alert(data);//
		return data+="1";
	}).then(function(data){
		alert(data);//1
		return data+="2";
	}).then(function(data){
		alert(data);//12
		return data+="3";
	}).done(function(data){
		alert(data);//123
	}).fail(function(data){
		alert(data);//123
	}).always(function(data){
		alert(data);//123
	});*/
	 
	var promise1 = defered.then(function(data){
		alert(data);//
		return data+="1";
	});
	 
	var promise2 = promise1.then(function(data){
		alert(data);//1
		return data+="2";
	});
	 
	var promise3 = promise2.then(function(data){
		alert(data);//12
		return data+="3";
	});
	 
	promise3.done(function(data){
		alert(data);//123
	});
	 
	defered.resolve("");
});
</script>
</head>
<body>

</body>
</html>