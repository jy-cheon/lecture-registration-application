package io.jeeyeon.app.infra;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LectureCapacityOrmRepository extends JpaRepository<LectureCapacityEntity, Long> {

}