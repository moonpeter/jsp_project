package ch02_jsp.ex02.test;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("utf-8");

        String id = request.getParameter("id");
//        String passwd = request.getParameter("passwd");

        if (id==null) {
            System.out.println("null 입니다.");
        }
        if (id.equals("")) {
            System.out.println("공백입니다.");
        }

        HttpSession session = request.getSession();
        session.setAttribute("id", id);
//        session.setAttribute("passwd", passwd);

        response.sendRedirect("ch02_jsp/ex02/test/template.jsp");
    }
}
