package jdbc.ex03_db;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login2")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = "";

        Cookie[] cookies = request.getCookies();
        if(cookies != null){
            for (int i =0; i<cookies.length; i++) {
                if(cookies[i].getName().equals("id")) {
                    id = cookies[i].getValue();
                }
            }
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/ch03_jdbc/ex03_db/login.jsp");
        request.setAttribute("id", id);
        dispatcher.forward(request, response);
    }

}
