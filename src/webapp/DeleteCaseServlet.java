package webapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "/DeleteCaseServlet")
public class DeleteCaseServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        Case nCase = (Case) session.getAttribute("nCase");
        int dbID = nCase.getDbID();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(Controller.jdbcURL, Controller.dbUser, Controller.dbPassword);
            String sql = "UPDATE cases SET is_deleted=1 WHERE id=? ";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, dbID);
            statement.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        session.removeAttribute("nCase");
        response.sendRedirect("/allCases");
    }
}
