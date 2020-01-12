<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="hobbyVO" class="com.nanshan.pqm.mo.vo.Hobby" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

</script>
</head>
<body>
<p>收到get後的page
<%-- <p>Name:<%=request.getAttribute("id") %>
<p>Pwd:<%=request.getAttribute("password") %>
<p>Sex:<%=request.getAttribute("sex") %>
<p>Hobby:<%=request.getAttribute("hobby") %>
<%=hobbyVO.getId() %>......... </br>
<%=hobbyVO.getPassword() %>........ </br>
<%=hobbyVO.getSex() %>..........</br>
<%=hobbyVO.getHobby() %>........</br>--%>

${hobbyVO.id}</br>
${hobbyVO.password}</br>
${hobbyVO.sex}</br>
${hobbyVO.hobby}</br>
xxxxxxxxxxxxxxx
<h1>aaaaaaaaa</h1>
</body>
</html>