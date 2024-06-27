package io.jeeyeon.app.domain;

public class AlreadyAppliedException extends RuntimeException {
    public AlreadyAppliedException(Student student, Lecture lecture) {
        super("Student with ID '" + student.getId() + "' has already applied to lecture '" + lecture.getLectureName()
                + "' by '" + lecture.getLecturer() + "' at " + lecture.getLectureDateTime());
    }

}
