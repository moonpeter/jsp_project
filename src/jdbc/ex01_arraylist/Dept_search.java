package jdbc.ex01_arraylist;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet("/dept_search")
public class Dept_search extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Dept_search(){
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = new DAO();
        int deptno = Integer.parseInt(request.getParameter("deptno"));
        ArrayList<Dept> list = dao.select(deptno);
        RequestDispatcher dispatcher = request.getRequestDispatcher("ch03_jdbc/ex01/list_el.jsp");
        request.setAttribute("list", list);
        dispatcher.forward(request, response);
    }
}
