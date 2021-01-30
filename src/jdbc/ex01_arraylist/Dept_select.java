package jdbc.ex01_arraylist;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/dept_select")
public class Dept_select extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = new DAO();
        ArrayList<Dept> list = dao.selectAll();
        RequestDispatcher dispatcher = request.getRequestDispatcher("ch03_jdbc/ex01/dept_search.jsp");
        request.setAttribute("list", list);
        dispatcher.forward(request, response);
    }
}
