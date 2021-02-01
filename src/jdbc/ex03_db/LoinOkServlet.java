package jdbc.ex03_db;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login_ok2")
public class LoinOkServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("passwd");

        DAO dao = new DAO();
        int result = dao.isId(id, password);
        String message = "";
        if(result==1){
            HttpSession session = request.getSession();
            session.setAttribute("id", id);
            message = id + "님 환영합니다.";
            String IDStore = request.getParameter("remember");
            Cookie cookie = new Cookie("id", request.getParameter("id"));

            if(IDStore != null && IDStore.equals("store")) {
                cookie.setMaxAge(2 * 60);
                response.addCookie(cookie);
            } else  {
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
            String goPage = "ch03_jdbc/ex03_db/templateTest.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(goPage);
            request.setAttribute("pagefile", "newitem");
            request.setAttribute("message", message);
            dispatcher.forward(request, response);
        } else if (result==-1){
            message="비밀번호가 일치하지 않습니다.";
        } else  {
            message = "아이디가 일치하지 않습니다.";
        }
        response.setContentType("text/html; charset=utf-8");
        response.getWriter().print("<script> alert('" + message + "');"
                + " location.href='login2' </script>");
    }
}
