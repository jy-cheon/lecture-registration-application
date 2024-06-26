package io.jeeyeon.app.infra;

import org.springframework.data.domain.Example;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LectureApplyHistoryOrmRepository extends JpaRepository<LectureApplyHistoryEntity, Long> {

//    @Override
//    LectureApplyHistoryEntity save(LectureApplyHistoryEntity entity);

//
//    @Override
//    <S extends LectureApplyHistoryEntity> List<S> findAll(Example<S> example);
}
