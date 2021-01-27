<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/26
  Time: 10:28 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>자바빈 예제</h1>
<jsp:useBean id="beanTest" class="javabean.BeanTest" scope="page"></jsp:useBean>
<jsp:setProperty name="beanTest" property="name" param="id"/>
<h3><%=beanTest.getName()%></h3>
</body>
</html>
