<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	initHtml();
	buttonClickFadeIn(1);
	buttonClickFadeIn(2);
});

function initHtml(){
	var arr = ["red","green","blue"];
	var k = 1;
	$("#btn2").hide();
	for (var i = 0; i < arr.length; i++) {
		var divTag = "#div"+k;
		$(divTag).css("width","80").css("height","80").css("display","none").css("background-color",arr[i]);
		k++;
	}
}

function buttonClickFadeIn(flag){
	var arr1 = ["","slow",3000];
	var j=1;
	var btn = "#btn"+flag;
	$(btn).click(function(){
		for (var i = 0; i < arr1.length; i++) {
			var divTag1 = "#div"+j;
			flag == 1?$(divTag1).fadeIn(arr1[i]):$(divTag1).fadeOut(arr1[i]);
			j++;
		}
		flag == 1? $("#btn2").show():"";	
		
	});
	
}

/*function buttonClickFadeOut(){
	var arr1 = ["","slow",3000];
	var j=1;
	$("#btn2").click(function(){
		for (var i = 0; i < arr1.length; i++) {
			var divTag1 = "#div"+j;
			$(divTag1).fadeOut(arr1[i]);
			j++;
		}
	});
	
}*/
</script>
</head>
<body>
<button id="btn1">Click to fade in boxes</button><br><br>

<div id="div1" ></div><br>
<div id="div2" ></div><br>
<div id="div3" ></div>
<button id="btn2">Click to fade in boxes</button><br><br>
</body>
</html>