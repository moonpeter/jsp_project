<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/26
  Time: 5:03 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = "";
    String value = "";

    String cookie = request.getHeader("Cookie");

    if(cookie!=null){
        Cookie cookies[] = request.getCookies();

        for (int i=0; i<cookies.length; i++) {
            if(cookies[i].getName().equals("name")) {
                name =cookies[i].getName();
                value=cookies[i].getValue();
            }
        }
%>
<h2>쿠키 이름 = <%=name%></h2>
<h2>쿠키 값 = <%=value%></h2>
<%
    }else {
%>
존재하는 쿠키가 없습니다.
<%
    }
%>
</body>
</html>
