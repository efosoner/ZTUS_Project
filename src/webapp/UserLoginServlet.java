package webapp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UserLoginServlet")
public class UserLoginServlet extends HttpServlet {

    public UserLoginServlet() { super(); }

    /**
     * handles login - adds user to session
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDAO userDao = new UserDAO();

        try {
            User user = userDao.checkLogin(username, password);
            String destPage = "WEB-INF/view/login.jsp";

            if (user != null) {
                HttpSession session = request.getSession(false);
                session.setAttribute("user", user);
                destPage = "WEB-INF/view/mainPage.jsp";
            }
            else {
                RequestDispatcher rs = request.getRequestDispatcher(destPage);
                rs.forward(request, response);
            }

            response.sendRedirect("mainPage");

        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/login.jsp");
        dispatcher.forward(request, response);
    }
}
