<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#hide").click(function() {
		$("p").hide(2000);
	});
	
	$("#show").on({
	    mouseenter: function(){
	      $(this).css("background-color", "lightgray");
	    },  
	    mouseleave: function(){
	      $(this).css("background-color", "lightblue");
	    }, 
	    click: function(){
	    	var text1 = "If you click on the Hide button, I will disappear.";
			$("p").text(text1).show();
			$(this).css("background-color", "red");
	    }  
	  });
	
});
</script>
</head>
<body>
	<p></p>

	<button id="hide">Hide</button>
	<button id="show">Show</button>
</body>
</html>