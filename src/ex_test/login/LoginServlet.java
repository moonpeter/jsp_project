package ex_test.login;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login_ok")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");

        if(id.equals("java") && passwd.equals("java")) {
            HttpSession session = request.getSession();
            session.setAttribute("id", id);

            response.sendRedirect("/ex_test/loginSuccess.jsp");
        } else if(id.equals("java")) {
            out.println("<script>");
            out.println("alert('비밀번호가 일치하지 않습니다.')");
            out.println("history.back()");
            out.println("</script>");
            out.close();
        } else {
            out.println("<script>");
            out.println("alert('아이디가 일치하지 않습니다.')");
            out.println("history.back()");
            out.println("</script>");
            out.close();
        }
    }
}
