package ch01.ex01_login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/LifeCycleTest2")
public class LifeCycleTest_post extends HttpServlet{
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=euc-kr");

        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");

        PrintWriter out = response.getWriter();
        out.println("Served at: ");

        out.println(request.getContextPath());

        out.println("<br>" + "아이디 = " + id + "<br>");
        out.println("비밀번호 = " + passwd + "<br>");
        out.close();
    }
}
