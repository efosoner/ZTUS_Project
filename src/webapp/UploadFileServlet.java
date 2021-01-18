package webapp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.time.ZoneId;

@WebServlet(name = "/UploadFileServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
public class UploadFileServlet extends HttpServlet {

    /**
     * Name of the directory where uploaded files will be saved, relative to
     * the web application directory.
     */
    public static final String SaveDirectory = "D:/CaseLyticsDownloaded";

    /**
     * handles file upload
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Case nCase = new Case();

        // Find the db id of case
        int caseDbId = -1;

        try {
            nCase = (Case) session.getAttribute("nCase");
        }
        catch (NullPointerException ex) {
            RequestDispatcher rs = request.getRequestDispatcher("view/500page.jsp");
            rs.forward(request, response);
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(Controller.jdbcURL, Controller.dbUser, Controller.dbPassword);
            String sql = "SELECT * FROM cases WHERE ownName=" + "'" + nCase.getOwnName() + "';";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet result = statement.executeQuery(sql);
            while (result.next()) {
                caseDbId = result.getInt("id");
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
        nCase.setDbID(caseDbId);

        // gets absolute path of the web application
        // String appPath = request.getServletContext().getRealPath(""); // Access Denied
        // constructs path of the directory to save uploaded file
        String savePath = SaveDirectory;

        // creates the save directory if it does not exists
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) fileSaveDir.mkdir();

        try {
            for (Part part : request.getParts()) {
                String fileName = extractFileName(part);
                fileName = new File(fileName).getName();
                part.write(savePath + File.separator + fileName);
                // Set file's attributes in db
                try (Connection conn = DriverManager.getConnection(Controller.jdbcURL, Controller.dbUser, Controller.dbPassword)) {
                    String sql = "INSERT INTO document (CASE_id, fileName, location, added_by) VALUES (?, ?, ?, ?)";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    statement.setInt(1, nCase.getDbID());
                    statement.setString(2, fileName);
                    statement.setString(3, savePath + File.separator + fileName);
                    statement.setInt(4, user.getDbID());
                    statement.executeUpdate();
                }
                catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
        catch (Exception ignore) {
            ignore.printStackTrace();
            session.removeAttribute("fileList");
            response.sendRedirect("/files");
        }
    }

    /**
     * Extracts file name from HTTP header content-disposition
     */
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
    }
}
