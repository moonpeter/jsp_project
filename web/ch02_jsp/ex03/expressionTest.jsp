<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/22
  Time: 5:28 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        span {
            color: red;
        }
    </style>
</head>
<body>
<%!
    public int sum() {
        int total = 0;
        for (int i = 1; i <= 100; i++) {
            total += i;
        }
        return total;
    }
%>
<h2>1부터 100까지의 합은 <span><%= sum()%></span>입니다.</h2>
<br>
<h2>1부터 100까지의 합에 3을 곱하면 <span><%= sum() * 3 %></span>이 됩니다.</h2>
<br>
<h2>1부터 100까지의 합을 1000으로 나누면 <span><%= (float) sum() / 1000 %></span>가 됩니다.</h2>
</body>
</html>
