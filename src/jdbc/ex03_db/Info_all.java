package jdbc.ex03_db;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/list")
public class Info_all extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = new DAO();
        ArrayList<Template_join> list = dao.selectAll();
        RequestDispatcher dispatcher = request.getRequestDispatcher("ch03_jdbc/ex03_db/list.jsp");
        request.setAttribute("list", list);
        dispatcher.forward(request, response);
    }
}
