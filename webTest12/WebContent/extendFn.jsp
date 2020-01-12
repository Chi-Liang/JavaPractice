<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/lib.js"></script>
<script type="text/javascript">
$.fn.extend({
	setRed:function(color,backgroundColor,fontSize){
		$(this).css({"color":color,"font-size":fontSize,"background-color":backgroundColor});		
	},
	animateMove:function(color,fontSize,backgroundColor){
		$("div").animate({left:'250px'}).css({"color":color,"font-size":fontSize,"background-color":backgroundColor});
	}
	
});

$.extend({
	aaa:function(id1){
		$(id1).css("color","blue");
	}	
});
	
$(document).ready(function(){
	var color = "red", backgroundColor="yellow",fontSize="50px";
    //$("#aaa").setRed(color,backgroundColor,fontSize);
	//var id1 = "#aaa";
	//$.aaa(id1);
	$("button").click(function(){
		$("div").animateMove(color,fontSize,backgroundColor);
	//	$("div").setRed(color,backgroundColor,fontSize);
	});
});
</script>
</head>
<body>
<button>aa</button>
<div style="position: absolute; height: 100px;width: 100px;">xxx</div>

</body>
</html>