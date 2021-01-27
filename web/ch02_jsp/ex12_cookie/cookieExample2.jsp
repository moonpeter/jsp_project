<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>

<%
    Cookie cookie = new Cookie("language1", request.getParameter("language"));
    cookie.setMaxAge(60*60*24);
    response.addCookie(cookie);
%>
<script>
    location.href="cookieExample.jsp"
</script>