<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/28
  Time: 11:33 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="ex14_mail.Myinfo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Properties" %>
<%@ page import="javax.activation.*" %>

<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%
    request.setCharacterEncoding("utf-8");
    String sender = request.getParameter("sender");
    String receiver = request.getParameter("receiver");
    String subject = request.getParameter("subject");
    String content = request.getParameter("content");
    System.out.println(request.getParameter("sender"));
    System.out.println(request.getParameter("receiver"));
    System.out.println(request.getParameter("subject"));
    System.out.println(request.getParameter("content"));


    String server = "smtp.naver.com";
    int port=587;
    try{
        Properties properties = new Properties();

        properties.put("mail.smtp.host", server);
        properties.put("mail.smtp.port", port);

        Session s = Session.getDefaultInstance(properties);

        Address sender_address = new InternetAddress(sender);
        Address receiver_address = new InternetAddress(receiver);

        Message message = new MimeMessage(s);

        message.setHeader("content-type", "text/html; charset=utf-8");
        message.setFrom(sender_address);
        message.addRecipient(Message.RecipientType.TO, receiver_address);
        message.setSubject(subject);
        message.setContent(content, "text/html;charset=utf-8");
        message.setSentDate(new java.util.Date());

        Transport transport = s.getTransport("smtp");
        transport.connect(server, Myinfo.naverid, Myinfo.naverpass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();

        out.println("<h3>메일이 정상적으로 전송되었습니다.</h3>");
    } catch (Exception e) {
        out.println("SMTP 서버가 잘못 설정되었거나, 서비스에 문제가 있습니다.");
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
