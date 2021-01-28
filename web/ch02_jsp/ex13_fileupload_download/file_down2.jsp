<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/27
  Time: 3:19 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*"%>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
    String fileName = request.getParameter("file_name");
    String original = request.getParameter("original");
    System.out.println("fileName = " + fileName);

    String savePath = "upload";

    ServletContext context = pageContext.getServletContext();
    String sDownloadPath = context.getRealPath(savePath);

    String sFilePath = sDownloadPath + "/" + fileName;
    System.out.println(sFilePath);

    byte b[] = new byte[4096];

    String sMimeType = context.getMimeType(sFilePath);
    System.out.println("sMimeType>>>" + sMimeType);

    if(sMimeType == null)
        sMimeType = "application/octet-stream";

    response.setContentType(sMimeType);

    String sEncoding = new String(original.getBytes(StandardCharsets.UTF_8), "ISO-8859-1");
    System.out.println(sEncoding);

    response.setHeader("Content-Disposition", "attachment; filename=" + sEncoding);

    try (
            BufferedOutputStream out2 = new BufferedOutputStream(response.getOutputStream());
            BufferedInputStream in = new BufferedInputStream(new FileInputStream(sFilePath));
            )
    {
        int numRead;

        while ((numRead = in.read(b, 0, b.length)) != -1) {
            out2.write(b, 0, numRead);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

