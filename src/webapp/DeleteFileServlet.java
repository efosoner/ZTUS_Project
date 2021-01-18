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

@WebServlet(name = "/DeleteFileServlet")
public class DeleteFileServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        FileCase fileCase = (FileCase) session.getAttribute("nFile");
        int dbID = fileCase.getDbID();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(Controller.jdbcURL, Controller.dbUser, Controller.dbPassword);
            String sql = "UPDATE document SET is_deleted=1 WHERE id=? ";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, dbID);
            statement.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        session.removeAttribute("nFile");
        response.sendRedirect("/files");
    }
}
