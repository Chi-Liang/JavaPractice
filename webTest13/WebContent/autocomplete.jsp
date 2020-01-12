<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="jqueryUI/jquery-ui.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="jqueryUI/jquery-ui.min.js"></script>
<script type="text/javascript">
  $(function() {
	  $( function() {
		    var availableTags = [
		      "ActionScript",
		      "AppleScript",
		      "Asp",
		      "BASIC",
		      "C",
		      "C++",
		      "Clojure",
		      "COBOL",
		      "ColdFusion",
		      "Erlang",
		      "Fortran",
		      "Groovy",
		      "Haskell",
		      "Java",
		      "JavaScript",
		      "Lisp",
		      "Perl",
		      "PHP",
		      "Python",
		      "Ruby",
		      "Scala",
		      "Scheme"
		    ];
		    $( "#tags" ).autocomplete({
		      source: availableTags
		    });
		  } );
  });
</script>
</head>
<body>
<div class="ui-widget">
  <label for="tags">Tags: </label>
  <input id="tags">
</div>
</body>
</html>