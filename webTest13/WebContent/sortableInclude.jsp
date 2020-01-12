<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="jqueryUI/jquery-ui.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="jqueryUI/jquery-ui.js"></script>
<style>
  #sortable1, #sortable2 { list-style-type: none; margin: 0; padding: 0; zoom: 1; }
  #sortable1 li, #sortable2 li { margin: 0 5px 5px 5px; padding: 3px; width: 90%; }
</style>
<script>
 $( function() {
	 $( "#sortable1" ).sortable({
	      items: "li:not(.ui-state-disabled)"
	    });
	 
	    $( "#sortable2" ).sortable({
	      cancel: ".ui-state-disabled"
	    });
	 
 } );
</script>
</head>
<body>
<h3 class="docs">Specify which items are sortable:</h3>
 
<ul id="sortable1">
  <li class="ui-state-default">Item 1</li>
  <li class="ui-state-default ui-state-disabled">(I'm not sortable or a drop target)</li>
  <li class="ui-state-default ui-state-disabled">(I'm not sortable or a drop target)</li>
  <li class="ui-state-default">Item 4</li>
</ul>
 
<h3 class="docs">Cancel sorting (but keep as drop targets):</h3>
 
<ul id="sortable2">
  <li class="ui-state-default">Item 1</li>
  <li class="ui-state-default ui-state-disabled">(I'm not sortable)</li>
  <li class="ui-state-default ui-state-disabled">(I'm not sortable)</li>
  <li class="ui-state-default">Item 4</li>
</ul>
</body>
</html>