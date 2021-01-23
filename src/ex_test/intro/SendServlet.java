package ex_test.intro;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/send")
public class SendServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SendServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        String passwd = request.getParameter("pass");
        String jumin1 = request.getParameter("jumin1");
        String jumin2 = request.getParameter("jumin2");
        String email = request.getParameter("email");
        String domain = request.getParameter("domain");
        String gender = request.getParameter("gender");
        String gender_result = "남자";
        if (gender.equals("f")) {
            gender_result = "여자";
        }
        String[] hobby = request.getParameterValues("hobby");
        String hobby_result = "";
        for (int i = 0; i < hobby.length; i++) {
            hobby_result += hobby[i] + " ";
        }
        String post = request.getParameter("post1");
        String address = request.getParameter("address");
        String intro = request.getParameter("intro");

        request.setAttribute("id", id);
        request.setAttribute("passwd", passwd);
        request.setAttribute("jumin", jumin1 + "-" + jumin2);
        request.setAttribute("email", email + "@" + domain);
        request.setAttribute("gender", gender_result);
        request.setAttribute("hobby", hobby_result);
        request.setAttribute("post", post);
        request.setAttribute("address", address);
        request.setAttribute("intro", intro);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/ex_test/intro/view.jsp");
        dispatcher.forward(request, response);
    }
}