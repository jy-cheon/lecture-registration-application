-- data.sql

-- 테이블 생성
CREATE TABLE IF NOT EXISTS LECTURE (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    lecturer VARCHAR(255) NOT NULL,
    lecture_name VARCHAR(255) NOT NULL,
    max_capacity INT NOT NULL,
    lecture_date_time VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS LECTURE_CAPACITY (
    lecture_id BIGINT PRIMARY KEY,
    available_capacity INT NOT NULL,
    version BIGINT DEFAULT 0 NOT NULL
);

CREATE TABLE IF NOT EXISTS LECTURE_APPLY_HISTORY (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(255) NOT NULL,
    lecture_id BIGINT NOT NULL,
    registered_date TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS STUDENT (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);


-- 초기 데이터 삽입
INSERT INTO LECTURE (lecturer, lecture_name, max_capacity, lecture_Date_Time)
VALUES
    ('하헌우', '클린 아키텍쳐', 30, '2024-07-01 09:00:00'),
    ('김종협', '대용량 트래픽', 30, '2024-07-15 14:00:00'),
    ('허재', '서버구축', 30, '2024-08-05 10:30:00'),
    ('이석범', '장애대응', 30, '2024-08-20 10:30:00');

INSERT INTO LECTURE_CAPACITY (lecture_id, available_capacity, version)
VALUES
(1, 30, 0),
(2, 30, 0),
(3, 30, 0),
(4, 30, 0);

INSERT INTO STUDENT (name)
VALUES
    ('김지원'), ('이승우'), ('박서연'), ('정재호'), ('최정환'), ('조혜진'), ('한서윤'), ('손예진'), ('임은지'), ('강지민'),
    ('윤채원'), ('장현우'), ('오영서'), ('권예원'), ('황주원'), ('나은정'), ('박성준'), ('송시우'), ('서하은'), ('신민서'),
    ('엄태영'), ('고지민'), ('홍승현'), ('문가영'), ('김준호'), ('양도윤'), ('김성준'), ('서정민'), ('최예진'), ('장우진'),
    ('이지아'), ('이정현'), ('박은주'), ('정성민'), ('송시현'), ('황수빈'), ('윤서율'), ('강민서'), ('임하윤'), ('이하은'),
    ('김지민'), ('박채원'), ('황수아'), ('조성민'), ('오지윤'), ('임시윤'), ('정성훈'), ('최서연'), ('강은서'), ('박수민'),
    ('이준서'), ('한나은'), ('오서준'), ('정서연'), ('박수빈'), ('송서현'), ('권수아'), ('김민서'), ('이서율'), ('장은우'),
    ('강하은'), ('신지민'), ('황지윤'), ('이지윤'), ('김서율'), ('장세은'), ('정채원'), ('서우진'), ('문서윤'), ('최현우'),
    ('송승우'), ('조민서'), ('신소은'), ('박서영'), ('이수민'), ('정승우'), ('한서현'), ('홍도현'), ('김재원'), ('양승민'),
    ('임수빈'), ('권성민'), ('오주원'), ('최은서'), ('송지윤'), ('이재윤'), ('윤승민'), ('김주원'), ('서수민'), ('한민서'),
    ('박재윤'), ('정하은'), ('신주원'), ('최정민'), ('황소윤'), ('나윤지'), ('김채원'), ('이승현'), ('박민서'), ('장지우');
