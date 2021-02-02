package jdbc.ex03_db;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/info_update")
public class Info_Update extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();

        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        String jumin1 = request.getParameter("jumin1");
        String jumin2 = request.getParameter("jumin2");
        String jumin = jumin1 + "-" + jumin2;
        String email = request.getParameter("email") + "@" + request.getParameter("domain");
        String gender = request.getParameter("gender");
        String[] hobbys = request.getParameterValues("hobby");
        String hobby = hobbys[0];
        for (int num=1; num<hobbys.length; num++){
            hobby += "," + hobbys[num];
        }
        String post1 = request.getParameter("post1");
        String address = request.getParameter("address");
        String intro = request.getParameter("intro");

        Template_join join = new Template_join();
        join.setId(id);
        join.setPassword(pass);
        join.setJumin(jumin);
        join.setEmail(email);
        join.setGender(gender);
        join.setHobby(hobby);
        join.setPost(post1);
        join.setAddress(address);
        join.setIntro(intro);

        DAO dao = new DAO();
        int result = dao.update(join);
        String message = "'회원 정보 수정 실패입니다.'";
        if(result == 1) {
            message ="'회원 정보 수정 완료입니다'";
            out.print("<script>alert(" + message + "); location.href='templatetest';</script>");
        }
    }

}
