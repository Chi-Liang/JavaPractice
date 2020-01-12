<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<script>
$(function(){
	$("#toPost").click(function(){
	    $.get("AServlet?action=doPost", function(data, status){
	      alert("Data: " + data + "\nStatus: " + status);
	    });
	});
	
	$("#toDelete").click(function(){
	    $.get("AServlet?action=doDelete", function(data, status){
	      alert("Data: " + data + "\nStatus: " + status);
	    });
	});
	
	$("#toHead").click(function(){
	    $.get("AServlet?action=doHead", function(data, status){
	      alert("Data: " + data + "\nStatus: " + status);
	    });
	});
	
	$("#toPut").click(function(){
	    $.get("AServlet?action=doPut", function(data, status){
	      alert("Data: " + data + "\nStatus: " + status);
	    });
	});
	
	$("#toPut11").click(function(){
		 $.ajax({
			 url: "AServlet?name=111&email=222", 
			 type:"PUT",
			// contentType:"application/json",
			// data:JSON.stringify({name:"aaa",email:"bbb"}),
			 success: function(data){
				 alert("Data: " + data + "\nStatus: " + status);
			  }});
	});
	
	$("#toPost11").click(function(){
		$.ajax({
			 url: "AServlet", 
			 type:"POST",
			 data:$("#formId").serialize(),
			 success: function(data){
				 alert("Data: " + data + "\nStatus: " + status);
			  }});
	});
});
</script>
</head>
<body>
<button id="toPost">doPost</button>
<button id="toDelete">toDelete</button>
<button id="toHead">toHead</button>
<button id="toPut">toPut</button>
<button id="toPut11">toPut</button>
<button id="toPost11">toPost</button>
<p>
<form id="formId">
	<input type="text" name="userName">
	<input type="checkbox" name="userInterest" value="看書">看書
	<input type="checkbox" name="userInterest" value="遊戲">遊戲
	<input type="checkbox" name="userInterest" value="電影">電影

</form>


</body>
</html>