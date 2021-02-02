<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/02/02
  Time: 10:14 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<c:forEach var="test" begin="1" end="10" step="2">
    <b>${test}</b>&nbsp;
</c:forEach>
<hr>

<%
    pageContext.setAttribute("nameList", new String[]{"홍길동", "임꺽정", "일지매", "신사임당"});
%>

<ol>
    <c:forEach var="name" items="${pageScope.nameList}">
        <li>${name}</li>
    </c:forEach>
</ol>
<hr>

<ul>
    <c:forEach var="name" items="${pageScope.nameList}" begin="2" end="3">
        <li>${name}</li>
    </c:forEach>
</ul>
<hr>

<ul>
    <c:forEach var="name" items="${nameList}" begin="2" end="3" varStatus="status">
        <li>${status.count}번째 - index[${status.index}]:${name}</li>
    </c:forEach>
</ul>
<hr>


<%
    java.util.ArrayList<java.util.Map<String, Object>> array = new java.util.ArrayList<java.util.Map<String, Object>>();
    java.util.HashMap<String, Object> m = new java.util.HashMap<String, Object>();
    m.put("name", "홍길동");
    m.put("age", 21);
    array.add(m);

    java.util.HashMap<String, Object> m2 = new java.util.HashMap<String, Object>();
    m2.put("name", "이순신");
    m2.put("age", 22);
    array.add(m2);
%>
map을 forEach로 출력합니다.
<ul>
    <c:forEach var="data" items="<%=m%>">
        <li>${data.key} - ${data.value}</li>
    </c:forEach>
</ul>
<hr>

키를 아는 경우 출력합니다.
<c:set var="map" value="<%=m%>"/>
<ol>
    <li>${map["name"]}</li>
    <li>${map["age"]}</li>
</ol>

array에서 꺼내와 보세요
<c:forEach var="array" items="<%=array%>">
    <ol>
        <li>name - ${array.name}</li>
        <li>age - ${array.age}</li>
    </ol>
</c:forEach>
<hr>

<c:forTokens var="alphabet" items="a,b,c,b,e,f,g,h,i,j,k,l,m,n" delims=",">
    <b>${alphabet}</b>&nbsp;
</c:forTokens>
<hr>


<c:set var="data" value="홍길동,김길동,고길동"/>
<c:forTokens var="varData" delims="," items="${data}">
    <b>${varData}</b>&nbsp;
</c:forTokens>
</body>
</html>
