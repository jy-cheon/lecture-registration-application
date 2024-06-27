package io.jeeyeon.app.infra;

import io.jeeyeon.app.domain.LectureApplyHistory;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.beans.BeanUtils;
import org.springframework.data.annotation.CreatedDate;

import java.sql.Timestamp;
import java.time.LocalDateTime;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "LECTURE_APPLY_HISTORY")
public class LectureApplyHistoryEntity {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private long userId;
    private long lectureId;
    private LocalDateTime registeredDate;

    public LectureApplyHistoryEntity(LectureApplyHistory lectureApplyHistory) {
        BeanUtils.copyProperties(lectureApplyHistory, this);
    }

    // set registeredDate automatically
    @PrePersist
    public void prePersist() {
        this.registeredDate = LocalDateTime.now(); // 현재 시각을 등록 일자로 설정
    }
}
