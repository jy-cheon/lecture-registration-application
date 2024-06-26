package io.jeeyeon.app.domain;

import org.springframework.stereotype.Repository;

@Repository
public interface StudentRepository {

    Student findById(long id);
}
