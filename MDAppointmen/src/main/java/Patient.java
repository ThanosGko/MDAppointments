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


    public List<Appointment> getWeeklyAppointments() {
		return null;
    }

    public List<Appointment> getMonthlyAppointments() {
		return null;
    }

}
