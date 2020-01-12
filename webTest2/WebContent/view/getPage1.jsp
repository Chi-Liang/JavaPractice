<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function check(){
	var radio_choice = false;
	var check_choice = false;
	var radioValue = "";
	var checkValue = [];
	var length =  myForm1.sex.length;
	for(var count =0;count<length;count++){
		if(myForm1.sex[count].checked){
			radio_choice = true;
			radioValue = myForm1.sex[count].value;
			break;
		}
	}
	
	var length1 = myForm1.ch1.length;
	for(var count =0;count<length1;count++){
		if(myForm1.ch1[count].checked){
			check_choice = true;
			checkValue.push(myForm1.ch1[count].value);
		}
	}
	
	if(!radio_choice){
		alert("請選擇sex");	
	}else if(!check_choice){
		alert("請選擇嗜好");
	}else{
		document.getElementById("myForm1").submit();
		//var id1 = document.getElementById("id1").value;
		//var passwd = document.getElementById("pwd3").value;
		//url = "http://localhost:8080/webTest1/test5/nnn.html?myname="+id1+"&passwd="+passwd+"&sex="+radioValue;
		//console.log(url);
		//window.location= url;
	}
}
</script>
</head>
<body>
<P>用get的方式處理
<form id="myForm1" action="/webTest2/MainServlet" method="get">
	<p>名字：<input type="text" id="id1" name="myname" size="10" maxlength="20" >
	<p>密碼：<input type="password" id="pwd3" name="passwd" size="8" maxlength="8" >
	<p>性別（單選）：<input type="radio" name="sex" value="男">男
		            <input type="radio" name="sex" value="女" >女
	<p>嗜好（複選）：
		<input name="ch1" type="checkbox" value="book">閱讀
		<input name="ch1" type="checkbox" value="sport" checked>運動
		<input name="ch1" type="checkbox" value="music" checked>音樂
		<input name="ch1" type="checkbox" value="sleep">睡覺
		<input name="ch1" type="checkbox" value="talk">聊天<P>
		<input type="hidden" name="action" value="getPage2">
	<p><input type="button" onclick="check();" value="submit"> 
</form>

<a href="http://localhost:8080/webTest2/MainServlet?action=getPage2&myname=tttdd&passwd=cc&sex=男">用get方式到下一頁</a>

</body>
</html>    