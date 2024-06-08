import java.util.Objects;

public class TimeSlot {
    private String start;
    private String end;

    public TimeSlot(String start, String end) {
        this.start = start;
        this.end = end;
    }

    public String getStart() {
        return start;
    }

    public String getEnd() {
        return end;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        TimeSlot timeSlot = (TimeSlot) obj;
        return start.equals(timeSlot.start) && end.equals(timeSlot.end);
    }

    @Override
    public int hashCode() {
        return Objects.hash(start, end);
    }
}
