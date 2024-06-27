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
    ('박재윤'), ('정하은'), ('신주원'), ('최정민'), ('황소윤'), ('나윤지'), ('김채원'), ('이승현'), ('박민서'), ('장지우'),
    ('최지민'), ('서윤서'), ('이준영'), ('정채은'), ('김지윤'), ('황지호'), ('최승원'), ('박채은'), ('장하은'), ('신현서'),
    ('이가은'), ('김서영'), ('임예은'), ('서하윤'), ('박시우'), ('최다은'), ('김수아'), ('박나은'), ('오서은'), ('한승민'),
    ('이아린'), ('황서연'), ('강지윤'), ('송채원'), ('정지민'), ('신혜원'), ('박예진'), ('최주원'), ('서정원'), ('이다빈'),
    ('임서현'), ('김하은'), ('장은정'), ('양세은'), ('이은지'), ('김태은'), ('황가은'), ('신가연'), ('김서현'), ('최민서'),
    ('박예은'), ('정예은'), ('서주원'), ('김다은'), ('신서연'), ('이가영'), ('박하은'), ('정세은'), ('김주은'), ('윤승희'),
    ('송현주'), ('박현지'), ('조지은'), ('황지민'), ('이수아'), ('유하은'), ('장다현'), ('서하율'), ('신유진'), ('박가현'),
    ('김소은'), ('최지연'), ('이예원'), ('박시윤'), ('서채은'), ('신예은'), ('이서영'), ('조예원'), ('황지연'), ('김시윤'),
    ('송예린'), ('장민서'), ('이유림'), ('박윤서'), ('서하린'), ('신가영'), ('김시은'), ('장현서'), ('이가현'), ('서예린'),
    ('박현우'), ('신민지'), ('최시현'), ('이하윤'), ('송하은'), ('황서영'), ('정나윤'), ('김서영'), ('신소연'), ('박지현'),
    ('장세현'), ('최하은'), ('이서진'), ('신세은'), ('김민지'), ('박가은'), ('서예은'), ('이서아'), ('정예린'), ('김수민'),
    ('황하은'), ('신예림'), ('최지우'), ('김지현'), ('서정은'), ('이서지'), ('송서아'), ('정가은'), ('박서아'), ('신가현'),
    ('김민지'), ('황유진'), ('정하윤'), ('신예진'), ('박윤지'), ('서지원'), ('이정원'), ('최하윤'), ('김서하'), ('신현지'),
    ('박민지'), ('서수연'), ('이서형'), ('신하은'), ('김하윤'), ('황은지'), ('조서아'), ('신채원'), ('이소윤'), ('김예린'),
    ('황가현'), ('정현우'), ('서하람'), ('신현우'), ('박예지'), ('김현서'), ('황예은'), ('최하율'), ('이가영'), ('신소민'),
    ('박가연'), ('서은우'), ('이다은'), ('송주원'), ('황민서'), ('신지연'), ('박다은'), ('서예림'), ('김현지'), ('이나윤'),
    ('황나윤'), ('신현서'), ('박서하'), ('서시은'), ('김민지'), ('황승현'), ('신은서'), ('박정아'), ('서주은'), ('김예지'),
    ('이가영'), ('신가영'), ('황은서'), ('최서하'), ('이승현'), ('신혜린'), ('박서형'), ('서예지'), ('김시현'), ('황윤서'),
    ('신소연'), ('박서아'), ('서예나'), ('김서아'), ('황가은'), ('신시우'), ('박서아'), ('서예나'), ('김서아'), ('황가은'),
    ('김도현'), ('서은찬'), ('이수아'), ('김현서'), ('서윤서'), ('이정민'), ('김서윤'), ('서현우'), ('이하은'), ('김지민'),
    ('송지우'), ('이서윤'), ('김윤서'), ('신주아'), ('박예준'), ('정지민'), ('최하윤'), ('김소연'), ('서예준'), ('박다영'),
    ('정지훈'), ('홍성민'), ('최서연'), ('윤지우'), ('장도현'), ('최윤서'), ('박하은'), ('신현우'), ('윤서연'), ('장현우'),
    ('이다윤'), ('정서현'), ('최민서'), ('홍하은'), ('조하은'), ('신지우'), ('강예은'), ('박승현'), ('서지민'), ('김유진'),
    ('양현서'), ('이주원'), ('박태민'), ('서지윤'), ('김하은'), ('양하은'), ('이정우'), ('서예은'), ('박시윤'), ('김지원'),
    ('양세은'), ('이하준'), ('서서현'), ('김다은'), ('양수민'), ('이예은'), ('서승현'), ('김민준'), ('오예준'), ('서아름'),
    ('김민지'), ('오준혁'), ('서정우'), ('김소민'), ('오승현'), ('서우진'), ('김주원'), ('오재민'), ('서도현'), ('김지민'),
    ('오준서'), ('서수빈'), ('김하윤'), ('오하늘'), ('서윤지'), ('김현서'), ('왕지훈'), ('서은우'), ('김은수'), ('왕준서'),
    ('서서연'), ('김다온'), ('왕성민'), ('서서현'), ('김서은'), ('왕수아'), ('서승민'), ('김민서'), ('왕지민'), ('서수지'),
    ('김서아'), ('왕서아'), ('서도윤'), ('김민지'), ('왕도현'), ('서소윤'), ('김유진'), ('왕수민'), ('서우진'), ('김도현'),
    ('왕지은'), ('서은재'), ('김주원'), ('왕예준'), ('서채은'), ('김민지'), ('왕지원'), ('서재원'), ('김서연'), ('왕수연'),
    ('서지율'), ('김하윤'), ('왕하은'), ('서민서'), ('김서현'), ('왕수빈'), ('서하윤'), ('김예원'), ('왕지훈'), ('서재현'),
    ('김주원'), ('왕예준'), ('서지윤'), ('김시윤'), ('왕지원'), ('서수아'), ('김하윤'), ('왕수연'), ('서서은'), ('김민서'),
    ('왕수빈'), ('서수정'), ('김소연'), ('왕하은'), ('서윤서'), ('김서연'), ('왕수연'), ('서하윤'), ('김하연'), ('왕하은'),
    ('서하윤'), ('김현서'), ('왕예진'), ('서서현'), ('김다윤'), ('왕하윤'), ('서도윤'), ('김민서'), ('왕하윤'), ('서소연'),
    ('김수빈'), ('왕도현'), ('서현서'), ('김하윤'), ('왕수연'), ('서민서'), ('김서아'), ('왕하윤'), ('서서현'), ('김민지'),
    ('왕수빈'), ('서하윤'), ('김소연'), ('왕하은'), ('서하윤'), ('김서연'), ('왕수연'), ('서윤서'), ('김하연'), ('왕하은'),
    ('서하윤'), ('김현서'), ('왕예진'), ('서서현'), ('김다윤'), ('왕하윤'), ('서도윤'), ('김민서'), ('왕하윤'), ('서소연'),
    ('김지원'), ('이승우'), ('박서연'), ('정재호'), ('최정환'), ('조혜진'), ('한서윤'), ('손예진'), ('임은지'), ('강지민'),
    ('윤채원'), ('장현우'), ('오영서'), ('권예원'), ('황주원'), ('나은정'), ('박성준'), ('송시우'), ('서하은'), ('신민서'),
    ('엄태영'), ('고지민'), ('홍승현'), ('문가영'), ('김준호'), ('양도윤'), ('김성준'), ('서정민'), ('최예진'), ('장우진'),
    ('이지아'), ('이정현'), ('박은주'), ('정성민'), ('송시현'), ('황수빈'), ('윤서율'), ('강민서'), ('임하윤'), ('이하은'),
    ('김지민'), ('박채원'), ('황수아'), ('조성민'), ('오지윤'), ('임시윤'), ('정성훈'), ('최서연'), ('강은서'), ('박수민'),
    ('이준서'), ('한나은'), ('오서준'), ('정서연'), ('박수빈'), ('송서현'), ('권수아'), ('김민서'), ('이서율'), ('장은우'),
    ('강하은'), ('신지민'), ('황지윤'), ('이지윤'), ('김서율'), ('장세은'), ('정채원'), ('서우진'), ('문서윤'), ('최현우'),
    ('송승우'), ('조민서'), ('신소은'), ('박서영'), ('이수민'), ('정승우'), ('한서현'), ('홍도현'), ('김재원'), ('양승민'),
    ('임수빈'), ('권성민'), ('오주원'), ('최은서'), ('송지윤'), ('이재윤'), ('윤승민'), ('김주원'), ('서수민'), ('한민서'),
    ('박재윤'), ('정하은'), ('신주원'), ('최정민'), ('황소윤'), ('나윤지'), ('김채원'), ('이승현'), ('박민서'), ('장지우'),
    ('최지민'), ('서윤서'), ('이준영'), ('정채은'), ('김지윤'), ('황지호'), ('최승원'), ('박채은'), ('장하은'), ('신현서'),
    ('이가은'), ('김서영'), ('임예은'), ('서하윤'), ('박시우'), ('최다은'), ('김수아'), ('박나은'), ('오서은'), ('한승민'),
    ('이아린'), ('황서연'), ('강지윤'), ('송채원'), ('정지민'), ('신혜원'), ('박예진'), ('최주원'), ('서정원'), ('이다빈'),
    ('임서현'), ('김하은'), ('장은정'), ('양세은'), ('이은지'), ('김태은'), ('황가은'), ('신가연'), ('김서현'), ('최민서'),
    ('박예은'), ('정예은'), ('서주원'), ('김다은'), ('신서연'), ('이가영'), ('박하은'), ('정세은'), ('김주은'), ('윤승희'),
    ('송현주'), ('박현지'), ('조지은'), ('황지민'), ('이수아'), ('유하은'), ('장다현'), ('서하율'), ('신유진'), ('박가현'),
    ('김소은'), ('최지연'), ('이예원'), ('박시윤'), ('서채은'), ('신예은'), ('이서영'), ('조예원'), ('황지연'), ('김시윤'),
    ('송예린'), ('장민서'), ('이유림'), ('박윤서'), ('서하린'), ('신가영'), ('김시은'), ('장현서'), ('이가현'), ('서예린'),
    ('박현우'), ('신민지'), ('최시현'), ('이하윤'), ('송하은'), ('황서영'), ('정나윤'), ('김서영'), ('신소연'), ('박지현'),
    ('장세현'), ('최하은'), ('이서진'), ('신세은'), ('김민지'), ('박가은'), ('서예은'), ('이서아'), ('정예린'), ('김수민'),
    ('황하은'), ('신예림'), ('최지우'), ('김지현'), ('서정은'), ('이서지'), ('송서아'), ('정가은'), ('박서아'), ('신가현'),
    ('김민지'), ('황유진'), ('정하윤'), ('신예진'), ('박윤지'), ('서지원'), ('이정원'), ('최하윤'), ('김서하'), ('신현지'),
    ('박민지'), ('서수연'), ('이서형'), ('신하은'), ('김하윤'), ('황은지'), ('조서아'), ('신채원'), ('이소윤'), ('김예린'),
    ('황가현'), ('정현우'), ('서하람'), ('신현우'), ('박예지'), ('김현서'), ('황예은'), ('최하율'), ('이가영'), ('신소민'),
    ('박가연'), ('서은우'), ('이다은'), ('송주원'), ('황민서'), ('신지연'), ('박다은'), ('서예림'), ('김현지'), ('이나윤'),
    ('황나윤'), ('신현서'), ('박서하'), ('서시은'), ('김민지'), ('황승현'), ('신은서'), ('박정아'), ('서주은'), ('김예지'),
    ('이가영'), ('신가영'), ('황은서'), ('최서하'), ('이승현'), ('신혜린'), ('박서형'), ('서예지'), ('김시현'), ('황윤서'),
    ('신소연'), ('박서아'), ('서예나'), ('김서아'), ('황가은'), ('신시우'), ('박서아'), ('서예나'), ('김서아'), ('황가은'),
    ('김도현'), ('서은찬'), ('이수아'), ('김현서'), ('서윤서'), ('이정민'), ('김서윤'), ('서현우'), ('이하은'), ('김지민'),
    ('송지우'), ('이서윤'), ('김윤서'), ('신주아'), ('박예준'), ('정지민'), ('최하윤'), ('김소연'), ('서예준'), ('박다영'),
    ('이준서'), ('한나은'), ('오서준'), ('정서연'), ('박수빈'), ('송서현'), ('권수아'), ('김민서'), ('이서율'), ('장은우'),
    ('강하은'), ('신지민'), ('황지윤'), ('이지윤'), ('김서율'), ('장세은'), ('정채원'), ('서우진'), ('문서윤'), ('최현우'),
    ('송승우'), ('조민서'), ('신소은'), ('박서영'), ('이수민'), ('정승우'), ('한서현'), ('홍도현'), ('김재원'), ('양승민'),
    ('임수빈'), ('권성민'), ('오주원'), ('최은서'), ('송지윤'), ('이재윤'), ('윤승민'), ('김주원'), ('서수민'), ('한민서'),
    ('박재윤'), ('정하은'), ('신주원'), ('최정민'), ('황소윤'), ('나윤지'), ('김채원'), ('이승현'), ('박민서'), ('장지우'),
    ('최지민'), ('서윤서'), ('이준영'), ('정채은'), ('김지윤'), ('황지호'), ('최승원'), ('박채은'), ('장하은'), ('신현서'),
    ('이가은'), ('김서영'), ('임예은'), ('서하윤'), ('박시우'), ('최다은'), ('김수아'), ('박나은'), ('오서은'), ('한승민'),
    ('이아린'), ('황서연'), ('강지윤'), ('송채원'), ('정지민'), ('신혜원'), ('박예진'), ('최주원'), ('서정원'), ('이다빈'),
    ('임서현'), ('김하은'), ('장은정'), ('양세은'), ('이은지'), ('김태은'), ('황가은'), ('신가연'), ('김서현'), ('최민서'),
    ('박예은'), ('정예은'), ('서주원'), ('김다은'), ('신서연'), ('이가영'), ('박하은'), ('정세은'), ('김주은'), ('윤승희'),
    ('송현주'), ('박현지'), ('조지은'), ('황지민'), ('이수아'), ('유하은'), ('장다현'), ('서하율'), ('신유진'), ('박가현'),
    ('김소은'), ('최지연'), ('이예원'), ('박시윤'), ('서채은'), ('신예은'), ('이서영'), ('조예원'), ('황지연'), ('김시윤'),
    ('송예린'), ('장민서'), ('이유림'), ('박윤서'), ('서하린'), ('신가영'), ('김시은'), ('장현서'), ('이가현'), ('서예린'),
    ('박현우'), ('신민지'), ('최시현'), ('이하윤'), ('송하은'), ('황서영'), ('정나윤'), ('김서영'), ('신소연'), ('박지현'),
    ('장세현'), ('최하은'), ('이서진'), ('신세은'), ('김민지'), ('박가은'), ('서예은'), ('이서아'), ('정예린'), ('김수민'),
    ('황하은'), ('신예림'), ('최지우'), ('김지현'), ('서정은'), ('이서지'), ('송서아'), ('정가은'), ('박서아'), ('신가현'),
    ('김민지'), ('황유진'), ('정하윤'), ('신예진'), ('박윤지'), ('서지원'), ('이정원'), ('최하윤'), ('김서하'), ('신현지'),
    ('박민지'), ('서수연'), ('이서형'), ('신하은'), ('김하윤'), ('황은지'), ('조서아'), ('신채원'), ('이소윤'), ('김예린'),
    ('황가현'), ('정현우'), ('서하람'), ('신현우'), ('박예지'), ('김현서'), ('황예은'), ('최하율'), ('이가영'), ('신소민'),
    ('박가연'), ('서은우'), ('이다은'), ('송주원'), ('황민서'), ('신지연'), ('박다은'), ('서예림'), ('김현지'), ('이나윤'),
    ('황나윤'), ('신현서'), ('박서하'), ('서시은'), ('김민지'), ('황승현'), ('신은서'), ('박정아'), ('서주은'), ('김예지'),
    ('이가영'), ('신가영'), ('황은서'), ('최서하'), ('이승현'), ('신혜린'), ('박서형'), ('서예지'), ('김시현'), ('황윤서'),
    ('신소연'), ('박서아'), ('서예나'), ('김서아'), ('황가은'), ('신시우'), ('박서아'), ('서예나'), ('김서아'), ('황가은'),
    ('김도현'), ('서은찬'), ('이수아'), ('김현서'), ('서윤서'), ('이정민'), ('김서윤'), ('서현우'), ('이하은'), ('김지민'),
    ('송지우'), ('이서윤'), ('김윤서'), ('신주아'), ('박예준'), ('정지민'), ('최하윤'), ('김소연'), ('서예준'), ('박다영');

