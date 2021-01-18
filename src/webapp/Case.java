package webapp;

import java.time.LocalDate;

public class Case {
    private int dbID;
    // private int owner;
    private String ownName;
    private String docID;
    private String company;
    private String department;
    private String caseID;
    private String note;
    private LocalDate startDate;
    private LocalDate deadline;
    // private LocalDate created;
    // private LocalDate edited;


    public Case() {
        this.ownName = "";
        this.docID = "";
        this.company = "";
        this.department = "";
        this.caseID = "";
        this.note = "";
    }

    public Case(int dbID, String ownName, String docID, String company, String department, String caseID, String note, LocalDate startDate, LocalDate deadline ) {
        this.dbID = dbID;
        this.ownName = ownName;
        this.docID = docID;
        this.company = company;
        this.department = department;
        this.caseID = caseID;
        this.note = note;
        this.startDate = startDate;
        this.deadline = deadline;
    }

    public String getOwnName() {
        return ownName;
    }

    public String getDocID() {
        return docID;
    }

    public String getCompany() {
        return company;
    }

    public String getDepartment() {
        return department;
    }

    public String getCaseID() {
        return caseID;
    }

    public String getNote() {
        return note;
    }

    public LocalDate getStartDate() { return startDate; }

    public LocalDate getDeadline() { return deadline; }

    public void setOwnName(String ownName) {
        this.ownName = ownName;
    }

    public void setDocID(String docID) {
        this.docID = docID;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public void setCaseID(String caseID) {
        this.caseID = caseID;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public void setStartDate(LocalDate startDate) { this.startDate = startDate; }

    public void setDeadline(LocalDate deadline) { this.deadline = deadline; }

    public int getDbID() {
        return dbID;
    }

    public void setDbID(int dbID) {
        this.dbID = dbID;
    }

    public String toString() { return ownName + ", " + docID; }
}
