<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	 $("input").keydown(function(){
		 $("#a1").css("background-color", "yellow")
	 });
	
	 $("input").mouseover(function(){
		 $("#a1").css("background-color", "red")
	 });
	 
	 $("#a2,#a3").click(function(){
		 $("#a2,#a3").css("border" , "2px solid green")
	 });
	 
/*	 $("#a3").click(function(){
		 $("#a3").css("border", "2px solid black")
	 }); */
	 
	 $(":radio").click(function(){
		var a4 = $("input[name='a4']:checked").val();
	 	alert(a4);
	 });
	 
	 var a5 = "";
	 $("#btn1").click(function(){
		 $("input[name='a5']").each(function() {
	         if($(this).prop("checked") == true){
	        	a5 += $(this).val()+"|";
	         }
	     });
		 alert(a5);
	 });
	 
	 $("#btn2").click(function(){
		 var b = $( "#sel1" ).val();
		 var a = $("#sel1").find("option:selected").text();
		 alert( a + " : " + b);
	//	 $("#sel1").val("B1");
		 $("#sel1").find("option[value='B1']").prop("selected",true);	
		 
	 });
	 
	 $("#sel1").find("option[value='B1']").prop("selected",true);
});
</script>
</head>
<body>
Name:<input type="text" id="a1" ></br></br>
e-mail:<input type="text" id="a2" ></br></br>
password:<input type="password" id="a3" ></br></br>

sex:<input type="radio" name="a4" value="1">男
	<input type="radio" name="a4" value="2">女</br></br>
	
category:	
	<input type="checkbox" name="a5" value="1">
	<input type="checkbox" name="a5" value="2">
	<input type="checkbox" name="a5" value="3"></br></br>
	
<select id="sel1" style="width: 50px;">
<option value="A1">A</option>
<option value="B1">B</option>
<option value="C1">C</option>
<option value="D1">D</option>
</select></br></br>

<button id="btn1">click me 1</button>	
<button id="btn2">click me 2</button>	
</body>
</html>