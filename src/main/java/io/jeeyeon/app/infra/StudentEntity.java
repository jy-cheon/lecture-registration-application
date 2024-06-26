package io.jeeyeon.app.infra;

import io.jeeyeon.app.domain.Lecture;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.beans.BeanUtils;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "STUDENT")
public class StudentEntity {

    @Id @GeneratedValue
    private long id;
    private String name;
}
