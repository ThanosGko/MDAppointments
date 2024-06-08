import java.util.Date;

public class Appointment {
    private Date date;
    private TimeSlot timeSlot;
    private Patient patient;
    private Doctor doctor;
    private String reason;

    public Appointment(Date date, TimeSlot timeSlot, Patient patient, Doctor doctor, String reason) {
        this.date = date;
        this.timeSlot = timeSlot;
        this.patient = patient;
        this.doctor = doctor;
        this.reason = reason;
    }

    public Date getDate() {
        return date;
    }

    public TimeSlot getTimeSlot() {
        return timeSlot;
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
