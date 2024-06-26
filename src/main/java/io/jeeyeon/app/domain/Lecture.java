package io.jeeyeon.app.domain;

import lombok.*;


@Setter
@Getter
@Builder
//@RequiredArgsConstructor
//@NoArgsConstructor
public class Lecture {

    private Long id;
    private String lecturer;
    private String lectureName;
    private Integer maxCapacity;
    private String lectureDateTime;

}
