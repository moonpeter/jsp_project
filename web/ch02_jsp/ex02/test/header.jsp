<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/22
  Time: 2:36 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    div {
        padding: 1%;
        color: white;
        background-color: green;
        text-align: right;
    }

    a:hover {
        font-weight: bold
    }
</style>
<div>
    <% String id = (String) session.getAttribute("id");
        if (id != null && !id.equals("")) {
    %>
    <%=id%>님이 로그인되었습니다.
    <a href="/ch02_jsp/ex02/test/logout.jsp">로그아웃</a>
    <%
    } else {
    %>
    <a href="login.jsp">로그인</a>
    <% }
    %>
</div>
