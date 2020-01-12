<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"> 
function check_all() 
{ 
    var checkboxs = document.getElementsByName("c"); 
    var returnValue = document.getElementsByName("all")[0].checked; 
    
    for(var i=0;i<checkboxs.length;i++){
    	checkboxs[i].checked = returnValue;
    } 
} 
</script> 
</head>
<body>
<p><input type="checkbox" name="all" onclick="check_all()" />全選/全不選</p> 
<p><input type="checkbox" name="c" value="" /></p> 
<p><input type="checkbox" name="c" value="" /></p> 
<p><input type="checkbox" name="c" value="" /></p> 
<p><input type="checkbox" name="c" value="" /></p> 
</body>
</html>