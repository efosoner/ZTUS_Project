package webapp;

import java.sql.*;

public class UserDAO {

    public User checkLogin (String username, String password) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(Controller.jdbcURL, Controller.dbUser, Controller.dbPassword);
        String sql = "select * from user where username=? and passwordValue=PASSWORD(?) and is_active=1";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, username);
        statement.setString(2, password);

        ResultSet result = statement.executeQuery();

        User user = null;

        if (result.next()) {
            user = new User();
            user.setDbID(result.getInt("id"));
            user.setEmail(result.getString("email"));
            user.setUsername(result.getString("username"));
            if (result.getInt("is_admin") != 0) {
                user.setAdmin(true);
            }
        }

        connection.close();

        return user;
    }
}
