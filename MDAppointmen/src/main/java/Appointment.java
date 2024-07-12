import java.util.Date;

public class Appointment {
    private String date;
    private String time;
    private Patient patient;
    private Doctor doctor;
    private String reason;

    public Appointment(String date, String time, Patient patient, Doctor doctor) {
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

    public Patient getPatient() {
        return patient;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public String getReason() {
        return reason;
    }
}
