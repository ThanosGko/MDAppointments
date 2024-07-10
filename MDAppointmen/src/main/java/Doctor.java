import java.util.*;

public class Doctor {
	public String username;
	public String amka;
	public String name;
	public String specialty;
	public String contactInfo;
	public String officeLocation;
    private Map<Date, List<TimeSlot>> availability = new HashMap<>();
    private List<Appointment> appointments = new ArrayList<>();

    public Doctor(String username, String amka, String name, String specialty, String contactInfo, String officeLocation) {
        this.username = username;
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
