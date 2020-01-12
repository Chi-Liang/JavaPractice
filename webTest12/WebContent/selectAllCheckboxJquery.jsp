<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript"> 
$(document).ready(function () {
    $("#ckbCheckAll").click(function () {
        $(":checkbox").prop('checked', this.checked);
        $(":checkbox").prop('disabled', true);
    });
});
</script> 
</head>
<body>
    <input type="checkbox" id="ckbCheckAll" />selectAll
    <p id="checkBoxes">
        <input type="checkbox"  id="Checkbox1" />
        <br />
        <input type="checkbox"  id="Checkbox2" />
        <br />
        <input type="checkbox"  id="Checkbox3" />
        <br />
        <input type="checkbox"  id="Checkbox4" />
        <br />
        <input type="checkbox"  id="Checkbox5" />
        <br />
    </p>
</body>
</html>