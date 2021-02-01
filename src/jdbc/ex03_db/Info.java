package jdbc.ex03_db;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/info")
public class Info extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = (String) request.getSession().getAttribute("id");
        if(id!=null && !id.equals("")) {
            DAO dao = new DAO();
            Template_join temp = dao.selectInfo(id);

            response.setContentType("text/html; charset=utf-8");
            if(temp == null) {
                response.getWriter().print("<script>alert('해당 정보가 존재하지 않습니다.');location.href='templatetest';</script>");
            } else {
                RequestDispatcher dispatcher = request.getRequestDispatcher("ch03_jdbc/ex03_db/info.jsp");
                request.setAttribute("temp", temp);
                dispatcher.forward(request, response);
            }
        } else {
            response.sendRedirect("templatetest");
        }
    }
}
