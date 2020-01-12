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
	allChecked:function(flag){
		this.each(function(){
				this.checked = flag;
		});		
	}
	
});

	
$(document).ready(function(){
	$("#checkAll").click(function(){
			$("input[type='checkbox']").allChecked(this.checked);		
	});
	
	

});
</script>
</head>
<body>
<input type="checkbox" name="allSelected" id="checkAll">全選/全不選</br>
<input type="checkbox" name="foo">foo</br>
<input type="checkbox" name="bar">bar</br>




</body>
</html>