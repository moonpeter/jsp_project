<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/26
  Time: 4:46 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie cookie = new Cookie("name", "hong");

    cookie.setMaxAge(6);
    response.addCookie(cookie);
%>
<h2>
    쿠키 이름:
    <%= cookie.getName()%>
</h2>
<h2>
    쿠키 값 :<%=cookie.getValue()%>
</h2>
<h2>
    쿠키 유지시간: <%=cookie.getMaxAge()%>초
    (이 시간이 지난 후 아래의 anchor를 클릭해 보세요)
</h2>
<a href=cookieTest2.jsp>쿠키 값 불러오기</a>
</body>
</html>
