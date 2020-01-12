<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript"> 
$(document).ready(function () {
    $("#select_all").click(function () {
        $(".checkbox").prop('checked', this.checked);
    });
    $(".checkbox").click(function () {
        $("#select_all").prop('checked', ($('.checkbox:checked').length==$('.checkbox').length)?true:false);
    });
    
});
</script> 
</head>
<body>
   <ul class = "chkAry">
    <li><input type="checkbox" id="select_all"/> Selecct All</li>
    <li><input class="checkbox" type="checkbox" name="check[]"> This is Item 1</li>
    <li><input class="checkbox" type="checkbox" name="check[]"> This is Item 2</li>
    <li><input class="checkbox" type="checkbox" name="check[]"> This is Item 3</li>
    <li><input class="checkbox" type="checkbox" name="check[]"> This is Item 4</li>
    <li><input class="checkbox" type="checkbox" name="check[]"> This is Item 5</li>
    <li><input class="checkbox" type="checkbox" name="check[]"> This is Item 6</li>
</ul>
</body>
</html>