package jdbc.ex03_db;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {
    public int insert(Template_join join) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int result = 0;
        try {
            Context init = new InitialContext();
            DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
            conn = ds.getConnection();

            String sql = "insert into template_join\n" +
                    "(id, password, jumin, email, gender, hobby, post, address, intro)\n" +
                    "values(?,?,?,?,?,?,?,?,?)";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, join.getId());
            pstmt.setString(2, join.getPassword());
            pstmt.setString(3, join.getJumin());
            pstmt.setString(4, join.getEmail());
            pstmt.setString(5, join.getGender());
            pstmt.setString(6, join.getHobby());
            pstmt.setString(7, join.getPost());
            pstmt.setString(8, join.getAddress());
            pstmt.setString(9, join.getIntro());
            result = pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null)
                    pstmt.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
            try {
                if (conn != null)
                    conn.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return result;
    }

    public int isId(String id, String password) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int result = 0;
        try {
            Context init = new InitialContext();
            DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
            conn = ds.getConnection();

            String sql = "select id, password from template_join where id=?";

            pstmt = conn.prepareStatement(sql.toString());
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                if(rs.getString("password").equals(password)) {
                    result =1;
                } else {
                    result=-1;
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(rs != null)
                    rs.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
            try {
                if (pstmt != null)
                    pstmt.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
            try {
                if (conn != null)
                    conn.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return result;
    }
}
