package jdbc.ex03_db;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

    public ArrayList<Template_join> selectAll() {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<Template_join> list = null;
        try {
            Context init = new InitialContext();
            DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
            conn = ds.getConnection();

            String sql = "select * from template_join";
            pstmt = conn.prepareStatement(sql);

            rs = pstmt.executeQuery();
            int i =0;
            while (rs.next()) {
                if(i++==0) {
                    list = new ArrayList<Template_join>();
                }
                Template_join temp = new Template_join();
                temp.setId(rs.getString("id"));
                temp.setPassword(rs.getString("password"));
                temp.setJumin(rs.getString("jumin"));
                temp.setEmail(rs.getString("email"));
                temp.setGender(rs.getString("gender"));
                temp.setHobby(rs.getString("hobby"));
                temp.setPost(rs.getString("post"));
                temp.setAddress(rs.getString("address"));
                temp.setIntro(rs.getString("intro"));
                temp.setRegister_date(rs.getString("register_date"));
                list.add(temp);
            }
        }catch (Exception e) {
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
        return list;
    }

    public Template_join selectInfo(String id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {

            Context init = new InitialContext();
            DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
            conn = ds.getConnection();

            String sql = "select * from template_join where id=?";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                Template_join temp = new Template_join();
                temp.setId(rs.getString("id"));
                temp.setPassword(rs.getString("password"));
                temp.setJumin(rs.getString("jumin"));
                temp.setEmail(rs.getString("email"));
                temp.setGender(rs.getString("gender"));
                temp.setHobby(rs.getString("hobby"));
                temp.setPost(rs.getString("post"));
                temp.setAddress(rs.getString("address"));
                temp.setIntro(rs.getString("intro"));
                return temp;

            }
        }catch (Exception e) {
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
        return null;
    }
}
