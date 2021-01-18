package webapp;

public class User {
    private int dbID;
    private String username;
    private String password;
    private String email;
    private boolean isAdmin;

    public int getDbID() {
        return dbID;
    }

    public String getUsername() {
        return username;
    }

    // public String getPassword() { return password; }

    public String getEmail() {
        return email;
    }

    public void setDbID(int dbID) {
        this.dbID = dbID;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    // public void setPassword(String password) { this.password = password; }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean admin) { isAdmin = admin; }

    public String toString() {
        return String.valueOf(dbID) + ", " + username;
    }
}
