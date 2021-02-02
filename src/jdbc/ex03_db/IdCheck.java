package jdbc.ex03_db;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/idcheck")
public class IdCheck extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        DAO dao = new DAO();

        int result = dao.isId(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("ch03_jdbc/ex03_db/idcheck.jsp");
        request.setAttribute("result", result);
        dispatcher.forward(request, response);
    }
}
