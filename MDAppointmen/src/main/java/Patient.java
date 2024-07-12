import java.util.*;

public class Patient {
    private String amka;
    private String name;

    public Patient(String amka, String name) {
        this.amka = amka;
        this.name = name;
    }
    
    public String getName() {
    	return name;
    }
    
    public String getAmka() {
    	return amka;
    }

}
