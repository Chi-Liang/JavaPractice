<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<style type="text/css">
.aaa{
	border:2px red solid;
	font-size: 16px;
	background-color: yellow;
	padding: 10px;
}
</style>
<script type="text/javascript">
$(function(){
	
	init();
	
	
	$("#btn1").click(function(){
		var arrs = ["#test1","#test2","#test3"];
		var sum = 0,sum1 = 0;
		var message = {open:"打開",close:"關閉"};
		var flag = false;
		for (var i = 0; i < arrs.length; i++) {
			var val = $(arrs[i]).attr("disabled");
			if(undefined == val){
				sum += 1; 
				
			}else if("disabled" == val){
				sum1+=1;
			}
			
		}
		
		if(sum == arrs.length){
			flag = true;
			$("#span1").text("關閉");
		}else if(sum1 == arrs.length){
			flag = false;
			$("#span1").text("打開");
		}
		$("#test1,#test2,#test3").attr("disabled",flag);
		$("#span1").text(flag?message.close:message.opens);
	});
	
});

function init(){
	$("#span1").text("打開");
}

</script>
</head>
<body>
<input type="text" id="test1" value="Mickey1" ></p>
<input type="text" id="test2" value="Mickey2" ></p>
<input type="text" id="test3" value="Mickey3" ></p>
<button id="btn1">開關</button></p>
<span id="span1" class="aaa"></span>
</body>
</html>