<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="jqueryUI/jquery-ui.min.css">
<link rel="stylesheet" href="lib/a.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="jqueryUI/jquery-ui.min.js"></script>
<script src="lib/aaa.js"></script>
<script type="text/javascript">
$(function() { 
    $( "#combobox" ).combobox();
    
    $.ajax({
        url: "ComboboxServlet",
        type: 'GET',
        dataType: "json",
        success: function (data,textStatus,jqXHR) {
       		$.each(data,function(i,item){
       			$("#combobox").append($("<option></option>").
       	        attr("value", item).text(item)); 
       			
       		});
        }
    });
} );
</script>
</head>
<body>
<div class="ui-widget">
  <label>Your preferred programming language: </label>
  <select id="combobox">
    <option value="xxx">Select one...</option>
  </select>
</div>
 
</body>
</html>