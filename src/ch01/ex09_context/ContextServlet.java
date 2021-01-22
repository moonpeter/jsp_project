package ch01.ex09_context;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/context")
public class ContextServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ContextServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String value = request.getParameter("food");
        request.setAttribute("food", value);

        HttpSession session = request.getSession();
        session.setAttribute("food", value);

        ServletContext sc = request.getSession().getServletContext();
        sc.setAttribute("food", value);

        response.sendRedirect("ch01/ex09_context/scope.jsp");
    }
}
