package io.jeeyeon.app.domain;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface LectureApplyHistoryRepository {

    Optional<LectureApplyHistory> findByUserIdAndLectureId(long studentId, long lectureId);

    LectureApplyHistory saveOne(LectureApplyHistory history);

    List<LectureApplyHistory> findAllByUserId(long userId);
}
