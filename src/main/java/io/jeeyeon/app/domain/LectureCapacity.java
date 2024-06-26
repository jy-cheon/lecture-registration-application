package io.jeeyeon.app.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
public class LectureCapacity {

    private Long lectureId;
    private Integer availableCapacity;

    boolean isAvailableLecture() {
        return this.availableCapacity > 0;
    }

    LectureCapacity decreaseCapacity(int amount) {
        this.availableCapacity -= amount;
        return this;
    }

}
