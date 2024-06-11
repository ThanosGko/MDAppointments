import java.util.*;

public class Doctor {
    private String amka;
    private String name;
    private String specialty;
    private String contactInfo;
    private String officeLocation;
    private Map<Date, List<TimeSlot>> availability = new HashMap<>();
    private List<Appointment> appointments = new ArrayList<>();

    public Doctor(String amka, String name, String specialty, String contactInfo, String officeLocation) {
        this.amka = amka;
        this.name = name;
        this.specialty = specialty;
        this.contactInfo = contactInfo;
        this.officeLocation = officeLocation;
    }

    public boolean isAvailable(Date date, TimeSlot timeSlot) {
        List<TimeSlot> slots = availability.get(date);
        return slots != null && slots.contains(timeSlot);
    }

    public void addAppointment(Appointment appointment) {
        appointments.add(appointment);
        availability.get(appointment.getDate()).remove(appointment.getTimeSlot());
    }

    public void removeAppointment(Appointment appointment) {
        appointments.remove(appointment);
        availability.get(appointment.getDate()).add(appointment.getTimeSlot());
    }

}
