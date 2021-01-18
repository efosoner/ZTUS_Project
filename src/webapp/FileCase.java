package webapp;

public class FileCase {
    private int dbID;
    private int caseID;
    private String name;
    private String path;

    public FileCase() { }

    public FileCase(int dbID, int caseID, String name, String path) {
        this.dbID = dbID;
        this.caseID = caseID;
        this.name = name;
        this.path = path;
    }

    public int getDbID() {
        return dbID;
    }

    public void setDbID(int dbID) {
        this.dbID = dbID;
    }

    public int getCaseID() {
        return caseID;
    }

    public void setCaseID(int caseID) {
        this.caseID = caseID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    @Override
    public String toString() {
        return "FileCase{" +
                "dbID=" + dbID +
                ", name='" + name + '\'' +
                '}';
    }
}
