package webapp;

import javax.servlet.RequestDispatcher;
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
import java.util.ArrayList;

@WebServlet(name = "AllFilesServlet")
public class AllFilesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        ArrayList<FileCase> fileList = (ArrayList<FileCase>)session.getAttribute("fileList");

        if (request.getParameter("addFile") != null){
            System.out.println(fileList);
            response.sendRedirect("/files");
        }
        if (request.getParameter("downloadFile") != null) {
            Integer fileDbID = Integer.valueOf(request.getParameter("downloadFile"));

            FileCase nFile = fileList.stream()
                    .filter(superFile -> fileDbID.equals(superFile.getDbID()))
                    .findAny()
                    .orElse(null);

            session.setAttribute("nFile", nFile);
            session.removeAttribute("fileList");
            response.sendRedirect("/downloadFile");
        }
        if (request.getParameter("deleteFile") != null) {
            Integer fileDbID = Integer.valueOf(request.getParameter("deleteFile"));

            FileCase nFile = fileList.stream()
                    .filter(superFile -> fileDbID.equals(superFile.getDbID()))
                    .findAny()
                    .orElse(null);

            session.setAttribute("nFile", nFile);
            response.sendRedirect("/deleteFile");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("user") != null) {
            if (session.getAttribute("fileList") != null) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/files.jsp");
                dispatcher.forward(request, response);
            }
            else {
                ArrayList<FileCase> fileList = new ArrayList<>();

                Case nCase = (Case) session.getAttribute("nCase");

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(Controller.jdbcURL, Controller.dbUser, Controller.dbPassword);
                    String sql = "SELECT * FROM document WHERE is_deleted=0 && CASE_id=?";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    statement.setInt(1, nCase.getDbID());
                    ResultSet resultSet = statement.executeQuery();
                    while (resultSet.next()) {
                        int dbID = resultSet.getInt("id");
                        String name = resultSet.getString("fileName");
                        String path = resultSet.getString("location");
                        int caseID = resultSet.getInt("CASE_id");

                        FileCase fileCase = new FileCase(dbID, caseID, name, path);
                        fileList.add(fileCase);
                    }
                    session.setAttribute("fileList", fileList);

                    RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/files.jsp");
                    dispatcher.forward(request, response);
                }
                catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }
        else {
            RequestDispatcher rs = request.getRequestDispatcher("view/500page.jsp");
            rs.forward(request, response);
        }
    }
}
