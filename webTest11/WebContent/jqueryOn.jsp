<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("p").on({
	    mouseenter: function(){
	      $(this).css("background-color", "lightgray");
	    },  
	    mouseleave: function(){
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
<p>Click or move the mouse pointer over this paragraph.</p>
</body>
</html>