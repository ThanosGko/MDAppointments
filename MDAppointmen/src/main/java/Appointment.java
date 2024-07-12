import java.util.Date;

public class Appointment {
    private String date;
    private String time;
    private String patient;
    private String doctor;
    private String reason;

    public Appointment(String date, String time, String patient, String doctor) {
        this.date = date;
        this.time = time;
        this.patient = patient;
        this.doctor = doctor;
    }

    public String getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }

    public String getPatient() {
        return patient;
    }

    public String getDoctor() {
        return doctor;
    }

    public String getReason() {
        return reason;
    }
}
