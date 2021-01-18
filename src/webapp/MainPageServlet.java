package webapp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "MainPageServlet")
public class MainPageServlet extends HttpServlet {
    /**
     * handles link to functionalities
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("addCase") != null) {
            //RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/addCase.jsp");
            //dispatcher.forward(request, response);
            response.sendRedirect("/addCase");
        }
        if (request.getParameter("cases") != null) {
            //RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/allCases.jsp");
            //dispatcher.forward(request, response);
            response.sendRedirect("/allCases");
        }
        if (request.getParameter("schedule") != null) {
            //RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/schedule.jsp");
            //dispatcher.forward(request, response);
            response.sendRedirect("/schedule");
        }
    }

    /**
     * privilege check
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        session.removeAttribute("caseList");
        session.removeAttribute("nCase");
        session.removeAttribute("fileList");
        session.removeAttribute("nFile");

        if (session.getAttribute("user") != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/mainPage.jsp");
            dispatcher.forward(request, response);
        }
        else {
            RequestDispatcher rs = request.getRequestDispatcher("view/500page.jsp");
            rs.forward(request, response);
        }
    }
}
