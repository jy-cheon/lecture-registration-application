package io.jeeyeon.app.infra;

import ch.qos.logback.core.joran.util.beans.BeanUtil;
import io.jeeyeon.app.domain.Lecture;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.beans.BeanUtils;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "LECTURE")
public class LectureEntity {

    @Id @GeneratedValue
    private Long id;
    private String lecturer;
    private String lectureName;
    private Integer maxCapacity;
    private String lectureDateTime; //yyyy-mm-dd hh:mm 2024-06-23 15:00

    public LectureEntity(Lecture lecture) {
        BeanUtils.copyProperties(lecture, this);
    }


}
