<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var items = [];
    
    items.push(["1","一"]);
    items.push(["2","二"]);
    items.push(["3","三"]);
    items.push(["4","四"]);
    items.push(["5","五"]);

for ( var item in items) {
	console.log(item);
}

function initSelect(){
	let obj = document.getElementById("number"); 
	
	for ( let val in items) {
		obj.add(new Option(items[val][0],items[val][1]));
	}
}

function printValue(){
	document.getElementById("result1").innerHTML = document.getElementById("number").value;
	let numberText = document.getElementById("number");
	let numbetIndex = numberText.selectedIndex;
	
	document.getElementById("result2").innerHTML=numberText.options[numbetIndex].text;
}
</script>
</head>
<body onload="initSelect();">
<div style="margin: 30px;float: left;">
	<select name="number" id="number" style="font-size: 26px;" onchange="printValue();">
	</select>
</div>
<label style="margin: 30px;float: left; font-size: 26px">這是txt</label>
<div id="result1" style="margin: 30px;float: left; font-size: 26px"></div>

<label style="margin: 30px;float: left; font-size: 26px">這是value</label>
<div id="result2" style="margin: 30px;float: left; font-size: 26px"></div>

</body>
</html>