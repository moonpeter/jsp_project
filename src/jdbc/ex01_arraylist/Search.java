package jdbc.ex01_arraylist;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

@WebServlet("/search")
public class Search extends HttpServlet {
    private static final long serialVersionID = 1L;

    public Search() {
        super();
    }

    protected void doGet(HttpServletRequest reqeust, HttpServletResponse response) throws SQLException
}

