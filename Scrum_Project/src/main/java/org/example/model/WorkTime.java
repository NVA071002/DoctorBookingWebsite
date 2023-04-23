package org.example.model;

import java.time.LocalDateTime;

public class WorkTime {
    private LocalDateTime dateTime;

    public WorkTime(LocalDateTime dateTime) {
        this.dateTime = dateTime;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(LocalDateTime dateTime) {
        this.dateTime = dateTime;
    }

    @Override
    public String toString() {
        return "WorkTime{" +
                "dateTime=" + dateTime +
                '}';
    }
}
