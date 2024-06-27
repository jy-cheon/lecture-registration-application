package io.jeeyeon.app.domain;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
class LectureServiceTest {

    @Autowired
    LectureService lectureService;

    /*
    * 1. 30명이 정원인 특강이 있다.
    * 2. 학생이 1000명이 있다.
    * 3. 동시에 같은 특강을 신청한다
    * 4. 30명의 학생만 신청완료된다.
    * */
    @Test
    @DisplayName("특강예약하기 - 동시성테스트")
    void applyLecture() throws InterruptedException {
        // Given
        int THREAD_NUM = 10;
        Lecture lecture = lectureService.findLectureAll().get(0);
        long lectureId = lecture.getId();
        ExecutorService executorService = Executors.newFixedThreadPool(THREAD_NUM);
        CountDownLatch latch = new CountDownLatch(THREAD_NUM);

        // When
        for (int i = 0; i < THREAD_NUM; i++) {
            int finalI = i;
            executorService.submit(() -> {
                try {
                    for (int j = 1; j < 101; j++) {
                        long userId = (finalI * 100) + j;
                        LectureApplyHistory apply = new LectureApplyHistory(userId, lectureId);
                        apply = lectureService.applyLecture(apply);
                        System.out.println("Successfully applied: " + apply.getUserId());
                    }
                } catch (Exception e) {
                    System.out.println(" : Failed to apply for lecture with id " + lectureId + ": " + e.getMessage());
                } finally {
                    latch.countDown();
                }
            });
        }

        latch.await();
        executorService.shutdown();

        // Then
        assertEquals(0, lectureService.getLectureCapacity(lectureId).getAvailableCapacity());
    }
}