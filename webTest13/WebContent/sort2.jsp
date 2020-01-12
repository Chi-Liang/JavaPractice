<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="jqueryUI/jquery-ui.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="jqueryUI/jquery-ui.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	
	 var asc = function(a, b) {
	        return $(a).find('input').val() > $(b).find('input').val() ? 1 : -1;
	    }
	 var desc = function(a, b) {
	        return $(a).find('input').val() > $(b).find('input').val() ? -1 : 1;
	    }

	 var sortByInput = function(sortBy) {
	        var sortEle = $('.container>div').sort(sortBy);
	        $('.container').empty().append(sortEle);
	 }
	 
	 $("#asc").click(function(){
		 sortByInput(asc)
	 });
	 
	 $("#desc").click(function(){
		 sortByInput(desc)
	 });
});
	 
</script>
</head>
<body>
<div class='container'>
<div id='1'>
    <div class='name'>bbbb</div>
    <div class='number'><input type='text' value='110'></div>
</div>
<div id='2'>
    <div class='name'>cccc</div>
    <div class='number'><input type='text' value='120'></div>
</div>
<div id='3'>
    <div class='name'>dddd</div>
    <div class='number'><input type='text' value='140'></div>
</div>
</div>
<button id="asc">小到大</button>
<button id="desc">大到小</button>
</body>
</html>