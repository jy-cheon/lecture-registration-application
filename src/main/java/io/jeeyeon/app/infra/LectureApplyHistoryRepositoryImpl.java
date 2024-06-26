package io.jeeyeon.app.infra;

import io.jeeyeon.app.domain.LectureApplyHistory;
import io.jeeyeon.app.domain.LectureApplyHistoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Repository
public class LectureApplyHistoryRepositoryImpl implements LectureApplyHistoryRepository {

    private final LectureApplyHistoryOrmRepository lectureApplyHistoryOrmRepository;

//    @Override
//    public List<LectureApplyHistory> findAll() {
//        List<LectureApplyHistoryEntity> list = lectureApplyHistoryOrmRepository.findAll();
//
//        return list.stream().map(entity -> {
//            LectureApplyHistory history = new LectureApplyHistory();
//            history.setLectureId(entity.getLectureId());
//            history.setUserId(entity.getUserId());
//            return history;
//        }).collect(Collectors.toList());
//    }

    @Override
    public Optional<LectureApplyHistory> findByUserIdAndLectureId(long studentId, long lectureId) {
        List<LectureApplyHistoryEntity> list = lectureApplyHistoryOrmRepository.findAll();

        return list.stream()
                .filter(entity -> studentId == entity.getUserId() && lectureId == entity.getLectureId())
                .map(entity -> new LectureApplyHistory(entity.getUserId(), entity.getLectureId()))
                .findAny();
    }

    @Override
    public LectureApplyHistory saveOne(LectureApplyHistory history) {
        LectureApplyHistoryEntity historyEntity = new LectureApplyHistoryEntity(history);

        historyEntity = lectureApplyHistoryOrmRepository.save(historyEntity);

        LectureApplyHistory lectureApplyHistory = new LectureApplyHistory();
        lectureApplyHistory.setLectureId(historyEntity.getLectureId());
        lectureApplyHistory.setUserId(historyEntity.getUserId());
        lectureApplyHistory.setRegisteredDate(historyEntity.getRegisteredDate());

        return lectureApplyHistory;
    }

    @Override
    public List<LectureApplyHistory> findAllByUserId(long userId) {
        return lectureApplyHistoryOrmRepository.findAll()
                .stream()
                .filter(entity -> userId == entity.getUserId())
                .map(entity -> new LectureApplyHistory(entity.getUserId(), entity.getLectureId(), entity.getRegisteredDate()))
                .toList();
    }
}
