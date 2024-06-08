import java.util.*;

public class Patient {
    private String amka;
    private String name;
    private String password;
    private List<Appointment> appointments = new ArrayList<>();

    public Patient(String amka, String name, String password) {
        this.amka = amka;
        this.name = name;
        this.password = password;
    }

    public void makeAppointment(Doctor doctor, Date date, TimeSlot timeSlot, String reason) {
        if (doctor.isAvailable(date, timeSlot)) {
            Appointment appointment = new Appointment(date, timeSlot, this, doctor, reason);
            doctor.addAppointment(appointment);
            appointments.add(appointment);
        } else {
            System.out.println("Doctor is not available at the selected time.");
        }
    }

    public void cancelAppointment(Appointment appointment) {
        appointment.getDoctor().removeAppointment(appointment);
        appointments.remove(appointment);
    }

    public List<Appointment> getWeeklyAppointments() {
		return null;
        // Implementation to return weekly appointments
    }

    public List<Appointment> getMonthlyAppointments() {
		return null;
        // Implementation to return monthly appointments
    }

    // Getters and setters
}
