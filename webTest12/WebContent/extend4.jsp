<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/lib.js"></script>
<script type="text/javascript">
var data1 = { name : "John" , time : "2pm"};
var url1 = "CCCServlet";
$.fn.extend({
	toGet:function(){
		$(this).click(function(){
			$.getAjax(url1);
		});	
	},
	toPost:function(){
		$(this).click(function(){
			$.postAjax(url1,data1);
		});	
	}
});

$(document).ready(function(){
	
//	$("#toGet").click(function(){
//		$.getAjax(url1);
//	});
	
//	$("#toPost").click(function(){
//		$.postAjax(url1,data1);
//	});
	
	$("#toGet").toGet();
	$("#toPost").toPost();
	
	
});
</script>
</head>
<body>
<button id="toGet">get</button></p>
<button id="toPost">post</button></p>


</body>
</html>