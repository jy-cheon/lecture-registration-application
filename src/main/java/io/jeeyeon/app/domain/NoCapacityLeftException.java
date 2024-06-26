package io.jeeyeon.app.domain;

public class NoCapacityLeftException extends RuntimeException {
    public NoCapacityLeftException(Lecture lecture) {
        super("No capacity left for lecture '" + lecture.getLectureName() + "' by '"
                + lecture.getLecturer() + "' at " + lecture.getLectureDateTime());
    }
}
