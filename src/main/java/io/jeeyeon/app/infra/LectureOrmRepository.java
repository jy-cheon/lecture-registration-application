package io.jeeyeon.app.infra;

import io.jeeyeon.app.domain.Lecture;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Repository
public interface LectureOrmRepository extends JpaRepository<LectureEntity, Long> {

//    Optional<LectureEntity> findLecture(String lecturer, String lectureName, String lectureDateTime);
}
