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
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;


@WebServlet(name = "AddNewCaseServlet")
public class AddNewCaseServlet extends HttpServlet {

    /**
     * handles case addition - object from request -> set object as attribute -> add case to db
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        Case nCase = new Case();
        nCase.setOwnName(request.getParameter("ownName"));
        nCase.setCompany(request.getParameter("company"));
        nCase.setDepartment(request.getParameter("department"));
        nCase.setNote(request.getParameter("notes"));
        nCase.setDocID(request.getParameter("docID"));
        nCase.setCaseID(request.getParameter("caseID"));

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String startDate = request.getParameter("startDate");
        String deadline = request.getParameter("deadline");
        try {
            nCase.setStartDate(LocalDate.parse(startDate, formatter));
            nCase.setDeadline(LocalDate.parse(deadline, formatter));
        }
        catch (Exception ignore) {}

        session.setAttribute("nCase", nCase);

        User user = (User) session.getAttribute("user");

        try  {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(Controller.jdbcURL, Controller.dbUser, Controller.dbPassword);

            String sql = "insert into cases (ownName, docID, company, department, caseID, note, owner, created_by, edited_by, startDate, deadline, created) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, nCase.getOwnName());
            statement.setString(2, nCase.getDocID());
            statement.setString(3, nCase.getCompany());
            statement.setString(4, nCase.getDepartment());
            statement.setString(5, nCase.getCaseID());
            statement.setString(6, nCase.getNote());
            statement.setInt(7, user.getDbID());
            statement.setInt(8, user.getDbID());
            statement.setInt(9, user.getDbID());
            statement.setObject(10, nCase.getStartDate());
            statement.setObject(11, nCase.getDeadline());
            statement.setObject(12, LocalDate.now());

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                session.removeAttribute("nCase");
            }

            conn.close();
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }

        response.sendRedirect("/mainPage");

    }

    /**
     * privilege check
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session.getAttribute("user") != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/addCase.jsp");
            dispatcher.forward(request, response);
        }
        else {
            RequestDispatcher rs = request.getRequestDispatcher("view/500page.jsp");
            rs.forward(request, response);
        }
    }
}
