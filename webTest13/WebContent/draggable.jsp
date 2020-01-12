<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="jqueryUI/jquery-ui.min.css">
<style type="text/css">
#draggable{
	width: 150px;
	height: 150px;
	padding: 0.5em;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="jqueryUI/jquery-ui.min.js"></script>
<script>
  $(function() {
		$("#draggable").draggable();
  });
</script>
</head>
<body>
<div id="draggable" class="ui-widget-content">
	<p>Drag me around</p>
</div>
</body>
</html>