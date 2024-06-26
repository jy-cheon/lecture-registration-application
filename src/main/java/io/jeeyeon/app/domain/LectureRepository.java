package io.jeeyeon.app.domain;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LectureRepository {

    Lecture findLecture(Lecture lecture);

    List<Lecture> findLectureAll();


    //LectureCapacity findByLectureId(long lectureId);
}
