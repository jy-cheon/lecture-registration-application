package io.jeeyeon.app.infra;

import io.jeeyeon.app.domain.EntityNotFoundException;
import io.jeeyeon.app.domain.Lecture;
import io.jeeyeon.app.domain.LectureRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Repository
public class LectureRepositoryImpl implements LectureRepository  {

    private final LectureOrmRepository lectureOrmRepository;

    @Override
    public Lecture findLecture(Lecture lecture) {
        Optional<LectureEntity> lectureEntity = lectureOrmRepository.findById(lecture.getId());

        if (lectureEntity.isEmpty()) throw new EntityNotFoundException("Lecture not found for lectureName: " + lecture.getLectureName());

        Lecture lectureFound = Lecture.builder()
                .id(lectureEntity.get().getId())
                .lecturer(lectureEntity.get().getLecturer())
                .lectureName(lectureEntity.get().getLectureName())
                .lectureDateTime(lectureEntity.get().getLectureDateTime())
                .maxCapacity(lectureEntity.get().getMaxCapacity())
                .build();

        return lectureFound;
    }

    @Override
    public List<Lecture> findLectureAll() {
        List<LectureEntity> lectures = lectureOrmRepository.findAll();
        return lectures.stream().map(entity -> Lecture.builder()
                .id(entity.getId())
                .lecturer(entity.getLecturer())
                .lectureName(entity.getLectureName())
                .maxCapacity(entity.getMaxCapacity())
                .lectureDateTime(entity.getLectureDateTime())
                .build()).toList();

    }
}
