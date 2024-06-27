package io.jeeyeon.app.domain;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Service
public class LectureService {

    private final LectureRepository lectureRepository;
    private final LectureCapacityRepository lectureCapacityRepository;
    private final StudentRepository studentRepository;
    private final LectureApplyHistoryRepository lectureApplyHistoryRepository;

    // TODO 트랜잭션 붙이기
    public LectureApplyHistory applyLecture(LectureApplyHistory lectureApply) {
        // 해당 학생이 있는지 확인
        Student student = findStudent(lectureApply.getUserId());

        // 해당 강의가 있는지 확인
        Lecture param = Lecture.builder()
                .id(lectureApply.getLectureId())
                .build();

        Lecture lecture = findLecture(param);

        // 해당 학생이 해당 강의를 신청한 기록이 없는지 확인
        if (isAlreadyApplied(student.getId(), lecture.getId())) {
            // 학생, 이미 이 강의 신청했어요
            throw new AlreadyAppliedException(student, lecture);
        }

        // 해당 강의 잔여 인원이 있는지 확인
        LectureCapacity lectureCapacity = getLectureCapacity(lecture.getId());
        if(lectureCapacity.isAvailableLecture()) {
            // 잔여 인원 줄이기
            decreaseCapacity(lectureCapacity);

            // 강의 신청
            return saveLectureHistory(new LectureApplyHistory(student.getId(), lecture.getId()));
        } else {
            // 잔여 없다
            throw new NoCapacityLeftException(lecture);
        }
    }

    private void decreaseCapacity(LectureCapacity capacity) {
        capacity = capacity.decreaseCapacity();
        lectureCapacityRepository.updateCapacity(capacity);
    }

    private LectureApplyHistory saveLectureHistory(LectureApplyHistory history) {
        return lectureApplyHistoryRepository.saveOne(history);
    }

    public boolean isAlreadyApplied(long studentId, long lectureId) {
        Optional<LectureApplyHistory> history = lectureApplyHistoryRepository.findByUserIdAndLectureId(studentId, lectureId);
        return history.isPresent();
    }

    public Lecture findLecture(Lecture lecture) {
        return lectureRepository.findLecture(lecture);
    }

    public LectureCapacity getLectureCapacity(long lectureId) {
        return lectureCapacityRepository.findByLectureId(lectureId);
    }

    public Student findStudent(long studentId) {
        return studentRepository.findById(studentId);
    }

    public List<Lecture> findLectureAll() {
        return lectureRepository.findLectureAll();
    }

    public List<LectureApplyHistory> findHistoryAll(long userId) {
        return lectureApplyHistoryRepository.findAllByUserId(userId);
    }

}
