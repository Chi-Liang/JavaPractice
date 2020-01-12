<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function printValue(){
	document.getElementById("result1").innerHTML=document.getElementById("number").value;
	
	let numberText = document.getElementById("number");
	let numbetIndex = numberText.selectedIndex;
	
	document.getElementById("result2").innerHTML=numberText.options[numbetIndex].text;
}
</script>
</head>
<body>
<div style="margin: 30px;float: left;">
<select name="number" id="number" style="font-size: 26px" onchange="printValue();">
			<%
				String mathArr[] = (String[]) request.getAttribute("mathArr");
				String selectedText = (String) request.getAttribute("selectedText");
				int selectValue = 0;

				for (int i = 0; i < mathArr.length; i++) {
					System.out.println(mathArr[i]);
					String selectedFlag = "";
					if (mathArr[i].equals(selectedText)) {
						selectValue = i + 1;
						selectedFlag = "selected";

					}
			%>
			<option value="<%=i + 1%>" <%=selectedFlag%>><%=mathArr[i]%></option>
			<%
				}
			%>

  </select>
</div>
<label style="margin: 30px;float: left; font-size: 26px;">這是value</label>
<div id="result1" style="margin: 30px;float: left;font-size: 26px;"><%=selectValue %></div>

<label style="margin: 30px;float: left; font-size: 26px;">這是text</label>
<div id="result2" style="margin: 30px;float: left;font-size: 26px;"><%out.print(selectedText); %></div>
</body>
</html>