package io.jeeyeon.app.infra;

import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentOrmRepository extends JpaRepository<StudentEntity, Long> {
}
