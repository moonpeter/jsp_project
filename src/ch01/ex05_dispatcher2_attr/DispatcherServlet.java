package ch01.ex05_dispatcher2_attr;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DispatcherServlet2")
public class DispatcherServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DispatcherServlet() {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet() : " + request.getParameter("food"));
        String food = request.getParameter("food");

        request.setAttribute("food", food);
        request.setAttribute("name", "jsp");

        RequestDispatcher dispatcher = request.getRequestDispatcher("/ch01/ex05_dispatcher2_attr/dispatcher.jsp");

        dispatcher.forward(request, response);
    }
}
