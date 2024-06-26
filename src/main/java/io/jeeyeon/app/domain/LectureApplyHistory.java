package io.jeeyeon.app.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.cglib.core.Local;

import java.time.LocalDateTime;
import java.util.List;

@Setter
@Getter
@NoArgsConstructor
public class LectureApplyHistory {

    private long userId;
    private long lectureId;
    private LocalDateTime registeredDate;

    public boolean isApplied(long userId, long lectureId) {
        if (this.userId == userId && this.lectureId == lectureId) return true;
        return false;
    }

    public LectureApplyHistory(long userId, long lectureId) {
        this.lectureId = lectureId;
        this.userId = userId;
    }

    public LectureApplyHistory(long userId, long lectureId, LocalDateTime registeredDate) {
        this(userId, lectureId);
        this.registeredDate = registeredDate;
    }
}
