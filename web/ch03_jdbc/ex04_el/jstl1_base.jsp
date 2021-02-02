<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/02/01
  Time: 5:29 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="test" value="Hello JSTL"/>
<h3>
    &lt;c:set&gt; 사용 후 :
    <c:out value="${test}" />
</h3>
<c:remove var="test"/>
<h3>
    &lt;c:remove&gt; 사용 후 :
    <c:out value="${test}"/>
</h3>

<c:catch var="err">
    <%=10/0%>
</c:catch>
<h3>
    &lt;c:catch&gt;로 잡아낸 오류 :
    <c:out value="${err}"/>
</h3>

<c:if test="true">
    조건식이 참이어서 무조건 수행합니다.<br>
</c:if>

<c:if test="${5<10}">
    <h3>5는 10보다 작다.</h3>
</c:if>

<c:if test="${6+3==8}">
    <h3>6+3은 9이다.</h3>
</c:if>

<c:choose>
    <c:when test="${5+10==50}">
        <h3>5+10은 50이다.</h3>
    </c:when>

    <c:otherwise>
        <h3>5+10은 50이 아니다.</h3>
    </c:otherwise>
</c:choose>


<c:set var="a" value="3"/>
<c:choose>
    <c:when test="${a==1}">
        <h3>1입니다.</h3>
    </c:when>
    <c:when test="${a==2}">
        <h3>2입니다.</h3>
    </c:when>
    <c:otherwise>
        <h3>1 또는 2가 아닙니다.</h3>
    </c:otherwise>
</c:choose>
<c:set var="a" value="${a+1}"/>
<c:out value="${a}"/>

</body>
</html>
