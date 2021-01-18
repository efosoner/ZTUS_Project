package webapp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UserLogoutServlet")
public class UserLogoutServlet extends HttpServlet {

    public UserLogoutServlet() {
        super();
    }

    /**
     * handles logout - deletes user form session
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttribute("caseList");
            session.removeAttribute("nCase");
            session.removeAttribute("fileList");
            session.removeAttribute("nFile");
            session.removeAttribute("user");
            session.removeAttribute("attempts");

            //RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            //dispatcher.forward(request, response);
            response.sendRedirect("/login");
        }
    }
}
