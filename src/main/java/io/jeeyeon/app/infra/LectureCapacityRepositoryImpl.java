package io.jeeyeon.app.infra;

import io.jeeyeon.app.domain.EntityNotFoundException;
import io.jeeyeon.app.domain.LectureCapacity;
import io.jeeyeon.app.domain.LectureCapacityRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import java.util.Optional;

@RequiredArgsConstructor
@Repository
public class LectureCapacityRepositoryImpl implements LectureCapacityRepository {

    private final LectureCapacityOrmRepository lectureCapacityOrmRepository;

    @Override
    public LectureCapacity findByLectureId(long lectureId) {
        Optional<LectureCapacityEntity> entity = lectureCapacityOrmRepository.findById(lectureId);

        if (entity.isEmpty()) throw new EntityNotFoundException("LectureCapacity not found for lectureId: " + lectureId);

        LectureCapacity lectureCapacity = new LectureCapacity();
        lectureCapacity.setLectureId(entity.get().getLectureId());
        lectureCapacity.setAvailableCapacity(entity.get().getAvailableCapacity());
        lectureCapacity.setVersion(entity.get().getVersion());
        return lectureCapacity;
    }

    @Override
    public LectureCapacity updateCapacity(LectureCapacity capacity) {

        LectureCapacityEntity entity = new LectureCapacityEntity(capacity);
        entity = lectureCapacityOrmRepository.save(entity);

        LectureCapacity lectureCapacity = new LectureCapacity();
        lectureCapacity.setAvailableCapacity(entity.getAvailableCapacity());
        lectureCapacity.setLectureId(entity.getLectureId());
        lectureCapacity.setVersion(entity.getVersion());
        return lectureCapacity;
    }
}
