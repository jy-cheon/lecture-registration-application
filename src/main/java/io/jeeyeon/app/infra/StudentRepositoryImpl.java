package io.jeeyeon.app.infra;

import io.jeeyeon.app.domain.EntityNotFoundException;
import io.jeeyeon.app.domain.Student;
import io.jeeyeon.app.domain.StudentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import java.util.Optional;

@RequiredArgsConstructor
@Repository
public class StudentRepositoryImpl implements StudentRepository {

    private final StudentOrmRepository studentOrmRepository;

    @Override
    public Student findById(long id) {
        Optional<StudentEntity> studentEntity = studentOrmRepository.findById(id);

        if (studentEntity.isEmpty()) throw new EntityNotFoundException("studentEntity not found for studentId: " + id);

        Student student = new Student();
        student.setId(studentEntity.get().getId());
        student.setName(studentEntity.get().getName());
        return student;
    }
}
