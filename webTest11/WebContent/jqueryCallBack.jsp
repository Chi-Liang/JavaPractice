<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("button").click(function(){
	    $("p").hide("slow", function(){
	      alert("The paragraph is now hidden");
	    });
	  });
});
</script>
<title>Insert title here</title>
</head>
<body>
<button>Hide</button>

<p>This is a paragraph with little content.</p>
</body>
</html>