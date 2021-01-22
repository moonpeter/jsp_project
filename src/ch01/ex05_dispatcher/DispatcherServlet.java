package ch01.ex05_dispatcher;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DispatcherServlet")
public class DispatcherServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DispatcherServlet() {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet() : " + request.getParameter("food"));

        RequestDispatcher dispatcher = request.getRequestDispatcher("/ch01/ex05_dispatcher/dispatcher.jsp");

        dispatcher.forward(request, response);
    }
}
