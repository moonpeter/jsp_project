<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width-device-width, initial-scale=1">
    <title>Title</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ch02_jsp/ex10_intro/intro.css" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/ch02_jsp/ex10_intro/intro.js"></script>
</head>
<body>
<form action="send.jsp" method="post" name="myform" id="myform">
    <div class="container">
        <fieldset>
            <legend>유효성 검사</legend>
            <label>ID</label><br>
            <input type="text" size="10" name="id" id="id" placeholder="Enter Id">
            <input type="button" value="ID중복검사" id="idcheck"><br>

            <label>비밀번호</label><br>
            <input type="password" name="pass" id="pass" placeholder="Enter Password"><br>

            <label>주민번호</label><br>
            <input type="text" size="6" maxlength="6" name="jumin1" id="jumin1" placeholder="주민번호 앞자리">
            <label>-</label>
            <input type="text" size="7" maxlength="7" name="jumin2" id="jumin2" placeholder="주민번호 뒷자리"><br>

            <label>E-Mail</label><br>
            <input type="text" name="email" id="email">
            @
            <input type="text" name="domain" id="domain">
            <select name=sel id=sel>
                <option value="">직접입력</option>
                <option value="naver.com">naver.com</option>
                <option value="daum.net">daum.net</option>
                <option value="nate.com">nate.com</option>
                <option value="gmail.com">gmail.com</option>
            </select><br>


            <label>성별</label><br>
            <div class="container2">
                <input type="radio" name="gender" value="m" id="gender1">남자
                <input type="radio" name="gender" value="f" id="gender2">여자
                <br>
            </div>

            <label>취미</label><br>
            <div class="container2">
                <input type="checkbox" name="hobby" id="hobby1" value="공부">공부
                <input type="checkbox" name="hobby" id="hobby2" value="게임">게임
                <input type="checkbox" name="hobby" id="hobby3" value="운동">운동
                <input type="checkbox" name="hobby" id="hobby4" value="등산">등산
                <input type="checkbox" name="hobby" id="hobby5" value="낚시">낚시
            </div>
            <br>

            <label>우편번호</label><br>
            <input type="text" size="3" maxlength="5" name="post1" id="post1">
            <input type="button" value="우편검색" id="postcode">
            <br>

            <label>주소</label><br>
            <input type="text" size="50" name="address" id="address">
            <br>

            <label>자기소개</label><br>
            <textarea name="intro" id="intro" cols="75" rows="10"></textarea>

            <br>
            <div class="clearfix">
                <button type="reset" value="취소" class="cancelbtn">Cancel</button>
                <button type="submit" value="회원가입" class="signupbtn">Sign Up</button>
            </div>
        </fieldset>
    </div>
</form>
</body>
</html>