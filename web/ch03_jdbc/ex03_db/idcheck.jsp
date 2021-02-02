<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/02/01
  Time: 3:35 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<%
    int result = (int)request.getAttribute("result");
%>
<script>
    var message=["사용중인 아이디 입니다.", "사용가능한 아이디 입니다."];
    var color=["red", "green"];
    var index=<%=result+1%>;
    $(opener.document).find("#result").empty().text(message[index]).css('color', color[index]);
    window.close();
</script>
</body>
</html>
