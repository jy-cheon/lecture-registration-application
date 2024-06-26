package io.jeeyeon.app.contoller;

import io.jeeyeon.app.domain.Lecture;
import io.jeeyeon.app.domain.LectureApplyHistory;
import io.jeeyeon.app.domain.LectureService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/lectures")
@RequiredArgsConstructor
@RestController
public class LectureController {

    private final LectureService lectureService;

    @PostMapping("/apply")
    public ResponseEntity<LectureApplyHistory> apply(@RequestBody LectureApplyReqDto lectureApplyReqDto) {
        LectureApplyHistory applyHistory = new LectureApplyHistory();
        applyHistory.setLectureId(lectureApplyReqDto.getLectureId());
        applyHistory.setUserId(lectureApplyReqDto.userId);

        LectureApplyHistory lectureApplyHistory = lectureService.applyLecture(applyHistory);
        return ResponseEntity.ok(lectureApplyHistory);
    }

    @GetMapping("")
    public ResponseEntity<List<Lecture>> lectures() {
        return ResponseEntity.ok(lectureService.findLectureAll());
    }

    @GetMapping("/application/{userId}")
    public ResponseEntity<?> application(@PathVariable long userId) {
        var list = lectureService.findHistoryAll(userId);

        if (list.isEmpty()) return ResponseEntity.status(HttpStatus.NOT_FOUND).body("수강신청 내용이 없습니다.");

        return ResponseEntity.ok(lectureService.findHistoryAll(userId));
    }
}
