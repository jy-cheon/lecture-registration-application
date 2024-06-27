package io.jeeyeon.app.domain;

import org.springframework.stereotype.Repository;

@Repository
public interface LectureCapacityRepository {

    LectureCapacity findByLectureId(long lectureId);

    LectureCapacity updateCapacity(LectureCapacity capacity);
}
