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
    private Long version;

    boolean isAvailableLecture() {
        return this.availableCapacity > 0;
    }

    LectureCapacity decreaseCapacity() {
        this.availableCapacity -= 1;
        return this;
    }

}
