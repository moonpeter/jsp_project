<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/22
  Time: 2:36 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="top">
    <% String id = (String) session.getAttribute("id");
        if (id != null && !id.equals("")) {
    %>
    <%=id%>님이 로그인되었습니다.
    <a href="info">(정보수정)</a>
    <%
        if(id.equals("admin")){
            out.print("<a href='list'>(회원정보)</a>");
        }
    %>
    <a href="logout">(로그아웃)</a>
    <%
        }else{
    %>
    <a href="login2">로그인</a>&nbsp;&nbsp;&nbsp;
    <a href="join">회원가입</a>
    <%
        }
    %>
</div>
