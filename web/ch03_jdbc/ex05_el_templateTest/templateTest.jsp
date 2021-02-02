<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/26
  Time: 3:16 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>templateTest.jsp</title>
    <link rel="stylesheet" href="/ch03_jdbc/ex03_db/style.css">
    <script>
        var message='<%=request.getAttribute("message")%>';
        if(message!='null') {
            alert(message);
        }
    </script>

</head>
<body>

<header>
    <h1>상품 목록입니다.</h1>
</header>

<nav>
    <%@ include file="top.jsp" %>
    <br><br>
</nav>


<div id="wrap">
    <aside>
        <%@ include file="left.jsp" %>
    </aside>
    <section>
        <jsp:include page='<%=request.getAttribute("pagefile")+".jsp"%>'/>
    </section>
</div>
<footer>
    <%@ include file="bottom.jsp" %>
</footer>
</body>
</html>
