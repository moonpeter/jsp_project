<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/22
  Time: 3:26 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        alert("로그아웃 되었습니다")
        location.href = "templateTest.jsp"
    </script>
</head>
<body>
<% session.invalidate(); %>
</body>
</html>
