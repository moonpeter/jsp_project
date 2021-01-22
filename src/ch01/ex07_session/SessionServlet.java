package ch01.ex07_session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SessionServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String value = request.getParameter("food");
        request.setAttribute("food", value);
        session.setAttribute("food", value);
        response.sendRedirect("ch01/ex07_session/scope.jsp");
    }
}
