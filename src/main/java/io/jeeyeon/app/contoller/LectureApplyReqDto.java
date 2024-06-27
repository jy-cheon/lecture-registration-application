package io.jeeyeon.app.contoller;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
@NoArgsConstructor
public class LectureApplyReqDto {
    public long userId;
    public long lectureId;
}
