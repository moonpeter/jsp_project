package ch01.ex01_LifeCycle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = {"/LifeCycle", "/a"})
public class LifeCycle extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LifeCycle() {
        super();
        System.out.println("저는 생성자 입니다.~~~");
    }

    public void init() throws ServletException{
        System.out.println("저는 init() 입니다.");
    }

    public void destroy() {
        System.out.println("저는 destroy() 입니다.-홍길동");
    }


    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("저는 service() 입니다.");

        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=euc-kr");

        PrintWriter out = response.getWriter();
        out.println("<html><head><style>body{background:yellow}</style></head><body>");
        out.println("요청주소: " + request.getRequestURL() + "<br>");
        out.println("쿼리스트링: " + request.getQueryString() + "<br>");
        out.println("파라미터 age: " + request.getParameter("age") + "<br>");
        out.println("파라미터 job: " + request.getParameter("job") + "<br>");
        out.println("</body></html>");
        out.close();
    }
}
