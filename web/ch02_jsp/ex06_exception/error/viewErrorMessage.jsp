<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        body {background-color: pink}
    </style>
</head>
<body>
요청 처리 과정에서 에러가 발생했습니다. <br>
빠른 시간 내에 문제를 해결하도록 하겠습니다.
<p>
에러 타입 : <%=exception.getClass().getName()%><br>
에러 메시지 : <%=exception.getMessage()%><br>
</p>
</body>
</html>