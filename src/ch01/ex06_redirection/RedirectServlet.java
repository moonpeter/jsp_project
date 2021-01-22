package ch01.ex06_redirection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RedirectServlet")
public class RedirectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RedirectServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet() : " + request.getParameter("food"));
        response.sendRedirect("/ch01/ex06_redirection/session.jsp");
    }
}
