<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
/*	  $("input").focus(function(){
	    $(this).css("background-color", "red");
	  });
	  
	  $("input").blur(function(){
	    $(this).css("background-color", "yellow");
	  });
	  
	  $("input").on("click", function(){
		  $(this).css("background-color", "green");
	  }); */
	  
	$("input").on({
		  focus: function(){
		    $(this).css("background-color", "lightgray");
		  }, 
		  blur: function(){
		    $(this).css("background-color", "lightblue");
		  }, 
		  click: function(){
		    $(this).css("background-color", "yellow");
		  } 
		});
});
</script>
</head>
<body>
Name: <input type="text" name="fullname"><br>
Email: <input type="text" name="email">
</body>
</html>