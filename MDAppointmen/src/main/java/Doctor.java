import java.util.*;

public class Doctor {
	public String username;
	public String amka;
	public String name;
	public String specialty;
	public String contactInfo;
	public String officeLocation;
	public String brief;
	public String path;

    public Doctor(String username, String amka, String name, String specialty, String contactInfo, String officeLocation, String path, String brief) {
        this.username = username;
    	this.amka = amka;
        this.name = name;
        this.specialty = specialty;
        this.contactInfo = contactInfo;
        this.officeLocation = officeLocation;
        this.path = path;
        this.brief = brief;
    }

    
    public String getUsername() {
        return username;
    }

    public String getAmka() {
        return amka;
    }

    public String getName() {
        return name;
    }

    public String getSpecialty() {
        return specialty;
    }

    public String getContactInfo() {
        return contactInfo;
    }

    public String getOfficeLocation() {
        return officeLocation;
    }
    
    public String getBrief() {
        return brief;
    }
    
    public String getPath() {
        return path;
    }
}
