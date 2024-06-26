package io.jeeyeon.app.infra;

import io.jeeyeon.app.domain.Lecture;
import io.jeeyeon.app.domain.LectureApplyHistory;
import io.jeeyeon.app.domain.LectureCapacity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.beans.BeanUtils;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "LECTURE_CAPACITY")
public class LectureCapacityEntity {

    @Id
    private Long lectureId;
    private Integer availableCapacity;
    @Version
    private long version;


    public LectureCapacityEntity(LectureCapacity lectureCapacity) {
        BeanUtils.copyProperties(lectureCapacity, this);
    }

}
