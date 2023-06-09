-- 학생 테이블
CREATE TABLE tb1_student(
    snumber NUMBER(8) PRIMARY KEY,
    sname   VARCHAR2(20) NOT NULL,
    age     NUMBER(3),
    gender  VARCHAR2(6) NOT NULL,
    address VARCHAR2(50),
    cid     NUMBER(3) NOT NULL,
    --외래키 제약조건(학과)
    CONSTRAINT fk_class FOREIGN KEY(cid)
    REFERENCES tb1_class(cid) ON DELETE CASCADE
);

-- 학생 자료 삽입
INSERT INTO tb1_student VALUES (20211234, '이강', 22, '여자', '서울시 종로구', 102);
INSERT INTO tb1_student VALUES (20211235, '박대양', 25, '남자', '경기도 성남시', 101);
INSERT INTO tb1_student VALUES (20211236, '한비야', 23, '여자', '경기도 수원시', 103);
INSERT INTO tb1_student VALUES (20211237, '투데이', 31, '남자', '경기도 광주시', 101);
INSERT INTO tb1_student VALUES (20211238, '긴하루', 19, '여자', '서울시 강남구', 101);

SELECT * FROM tb1_student;

-- 1. 주소가 '경기도'인 학생을 검색하시오.
SELECT * FROM tb1_student WHERE address LIKE '%경기도%';
-- 2. 주소가 '경기도'이고 남자인 학생을 검색하시오.
SELECT * FROM tb1_student
WHERE address LIKE '경기도%'
AND gender = '남자';
-- 3. 나이가 많은 순으로 정렬하시오.
SELECT * FROM tb1_student 
ORDER BY age desc;







