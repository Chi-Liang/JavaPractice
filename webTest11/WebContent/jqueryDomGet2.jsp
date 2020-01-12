<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("button").click(function(){
			console.log("Value:"+$("#test").val());		 
	 });
	
	$("#sel").on({
	    mouseenter: function(){
	      $(this).css("background-color", "lightgray");
	    },  
	    mouseleave: function(){
	      $(this).css("background-color", "lightblue");
	    }, 
	    change: function(){
	    	alert("Value:"+$("#sel").val());
	    }  
	  });	 
});
	
</script>
</head>
<body>
<p>Name: <input type="text" id="test" value="Mickey">
<p>
<select id="sel">
  <option value="111">AAA</option>
  <option value="222">BBB</option>
  <option value="333">CCC</option>
</select>
</p>
<button>click me</button>
</body>
</html>