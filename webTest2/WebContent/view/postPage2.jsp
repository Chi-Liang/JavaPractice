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
<p>收到post後的page</p>
<%-- <p>Name:<%=request.getAttribute("id1") %>
<p>Pwd:<%=request.getAttribute("password") %>
<p>Sex:<%=request.getAttribute("sex") %>
<p>Hobby:<%=request.getAttribute("hobby") %>
<%=hobbyVO.getId() %>......... </br>
<%=hobbyVO.getPassword() %>........ </br>
<%=hobbyVO.getSex() %>..........</br>
<%=hobbyVO.getHobby() %>........</br>--%>
<%=hobbyVO.getId()%>
<%=hobbyVO.getPassword()%>
<%=hobbyVO.getSex()%>
<%=hobbyVO.getHobby()%>

yyyyyyyyyy
<hr>
${hobbyVO.id}</br>
${hobbyVO.password}</br>
${hobbyVO.sex}</br>
${hobbyVO.hobby}</br>
<hr>
<p>用el bean的用法</p>
<p>Name:<jsp:getProperty property="id" name="hobbyVO"/>
<p>Pwd:<jsp:getProperty property="password" name="hobbyVO"/>
<p>Sex:<jsp:getProperty property="sex" name="hobbyVO"/>
<p>Hobby:<jsp:getProperty property="hobby" name="hobbyVO"/>


xxxxxxxxxxxxxxx
<h1>aaaaaaaaa</h1>
</body>
</html>