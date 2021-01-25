<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/25
  Time: 9:08 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h3>Request 예제입니다. </h3>
    <form action="/ch02_jsp/ex04/requestTest1.jsp" method="get">
        <table class="table">
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" class="form-control" required></td>
            </tr>
            <tr>
                <td>성별</td>
                <td>
                    <label for="">
                        <input type="radio" name="gender" value="male" required> 남자
                    </label>
                    <label for="">
                        <input type="radio" name="gender" value="female" required> 여자
                    </label>
                </td>
            </tr>
            <tr>
                <td>취미</td>
                <td>
                    <label for="">
                        <input type="checkbox" value="독서" name="hobby"> 독서
                    </label>
                    <label for="">
                        <input type="checkbox" value="게임" name="hobby"> 게임
                    </label>
                    <label for="">
                        <input type="checkbox" value="TV시청" name="hobby"> TV시청
                    </label>
                    <label for="">
                        <input type="checkbox" value="운동" name="hobby"> 운동
                    </label>
                    <label for="">
                        <input type="checkbox" value="기타" name="hobby"> 기타
                    </label>
                </td>
            </tr>
            <tr>
                <td colspan="2"><button type="submit" class="btn btn-success">전송</button></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
