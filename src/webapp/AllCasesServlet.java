package webapp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

@WebServlet(name = "AllCasesServlet")
public class AllCasesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        ArrayList<Case> caseList = (ArrayList<Case>)session.getAttribute("caseList");

        if (request.getParameter("latest") != null) {
            caseList.sort(Comparator.comparing(nCase -> nCase.getStartDate()));
            Collections.reverse(caseList);
            response.sendRedirect("/allCases");
        }
        if (request.getParameter("oldest") != null) {
            caseList.sort(Comparator.comparing(nCase -> nCase.getStartDate()));
            response.sendRedirect("/allCases");
        }
        if (request.getParameter("shortDeadline") != null) {
            caseList.sort(Comparator.comparing(nCase -> nCase.getDeadline()));
            response.sendRedirect("/allCases");
        }
        if (request.getParameter("editCase") != null) {
            Integer caseDbID = Integer.valueOf(request.getParameter("editCase"));

            Case nCase = caseList.stream()
                    .filter(superCase -> caseDbID.equals(superCase.getDbID()))
                    .findAny()
                    .orElse(null);

            session.setAttribute("nCase", nCase);
            session.removeAttribute("caseList");
            response.sendRedirect("/editCase");
        }
        if (request.getParameter("deleteCase") != null) {
            Integer caseDbID = Integer.valueOf(request.getParameter("deleteCase"));

            Case nCase = caseList.stream()
                    .filter(superCase -> caseDbID.equals(superCase.getDbID()))
                    .findAny()
                    .orElse(null);

            session.setAttribute("nCase", nCase);
            session.removeAttribute("caseList");
            response.sendRedirect("/deleteCase");
        }
        if (request.getParameter("files") != null) {
            session.removeAttribute("fileList");
            Integer caseDbID = Integer.valueOf(request.getParameter("files"));

            Case nCase = caseList.stream()
                    .filter(superCase -> caseDbID.equals(superCase.getDbID()))
                    .findAny()
                    .orElse(null);

            session.setAttribute("nCase", nCase);
            session.removeAttribute("caseList");
            response.sendRedirect("/files");
        }
        if (request.getParameter("search") != null) {
            String search = request.getParameter("searchbox");
            search = "%" + search + "%";
            if (!search.isEmpty()) {
                caseList = new ArrayList<>();

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(Controller.jdbcURL, Controller.dbUser, Controller.dbPassword);
                    String sql = "SELECT * FROM cases " +
                            "WHERE (ownName LIKE ? OR docID LIKE ? OR company LIKE ? " +
                            "OR department LIKE ? OR caseID LIKE ? OR note LIKE ?) " +
                            "AND is_deleted = 0";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    statement.setString(1, search);
                    statement.setString(2, search);
                    statement.setString(3, search);
                    statement.setString(4, search);
                    statement.setString(5, search);
                    statement.setString(6, search);
                    ResultSet resultSet = statement.executeQuery();
                    resolveResult(caseList, resultSet);
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                session.removeAttribute("caseList");
                session.setAttribute("caseList", caseList);

                RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/allCases.jsp");
                dispatcher.forward(request, response);
            }
            else {
                session.removeAttribute("caseList");
                response.sendRedirect("/allCases");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session.getAttribute("user") != null) {
            if (session.getAttribute("caseList") != null) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/allCases.jsp");
                dispatcher.forward(request, response);
            }
            else {
                ArrayList<Case> caseList = new ArrayList<>();

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(Controller.jdbcURL, Controller.dbUser, Controller.dbPassword);
                    String sql = "SELECT * FROM cases WHERE is_deleted=0";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    ResultSet resultSet = statement.executeQuery();
                    resolveResult(caseList, resultSet);
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                session.setAttribute("caseList", caseList);

                RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/allCases.jsp");
                dispatcher.forward(request, response);
            }
        }
        else {
            RequestDispatcher rs = request.getRequestDispatcher("view/500page.jsp");
            rs.forward(request, response);
        }
    }

    private void resolveResult(ArrayList<Case> caseList, ResultSet resultSet) throws SQLException {
        while (resultSet.next()) {
            int dbID = resultSet.getInt("id");
            String ownName = resultSet.getString("ownName");
            String docID = resultSet.getString("docID");
            String company = resultSet.getString("company");
            String department = resultSet.getString("department");
            String caseID = resultSet.getString("caseID");
            String note = resultSet.getString("note");
            LocalDate startDate = resultSet.getDate("startDate").toLocalDate();
            LocalDate deadline = resultSet.getDate("deadline").toLocalDate();

            Case c = new Case(dbID, ownName, docID, company, department, caseID, note, startDate, deadline);
            caseList.add(c);
        }
    }

}