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
var deferred = $.Deferred();
 
// 使用then()注册一个resolved状态的回调函数,并返回一个过滤后的promise
// 返回的filtered已经不是原来的Deferred或者Promise对象了
var filtered = deferred.then(function( value ) {
				alert("trigger Deferred filter.value="+value);//5
				return value * 2;
			}).done(function( value1 ) {
			    alert("filtered value=" + value1);//10
			    return value1 * 5;
			}).fail(function( value2 ) {
			    alert("filtered value=" + value2);//10
			    return value1 * 10;
			}).always(function( value3 ) {
				alert("final");
			});
 
// 用过滤后的Promise再次注册回调函数			
//filtered.done(function( value ) {
//    alert("filtered value=" + value);//10
//});

//filtered.fail(function( value ) {
//    alert("filtered value=" + value);//10
//});

deferred.resolve( 5 );
//deferred.reject( 5 );
});
</script>
</head>
<body>

</body>
</html>