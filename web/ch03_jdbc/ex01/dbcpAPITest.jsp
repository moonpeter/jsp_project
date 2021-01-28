<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/28
  Time: 2:31 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
    Connection conn = null;
    try {
        Context init = new InitialContext();
        DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
        conn = ds.getConnection();
        out.println("<h3>컨넥션 풀에 연결되었습니다.</h3>");
        conn.close();
    } catch (Exception e) {
        out.println("<h3>컨넥션 풀 연결에 실패하였습니다</h3>");
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
