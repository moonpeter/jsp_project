package ch01.ex4_check_values;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/choiceFruit")
public class Fruit_css extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String[] img = request.getParameterValues("fruit");

        response.setContentType("text/html;charset=utf-8");

        PrintWriter out = response.getWriter();
        out.println("<html><head><title></title></head><body>");
        for(int i=0; i < img.length; i++) {
            out.println("<img src=" + img[i] + ">");
        }
        out.println("</body></html>");
        out.close();
    }
}
