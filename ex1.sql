-- 문자 자료형 비교
CREATE TABLE ex1(
    column1 CHAR(10),      -- 고정길이 자료형
    column2 VARCHAR(10)    -- 가변길이 자료형
);

-- 자료 추가
INSERT INTO ex1(column1, column2) VALUES ('abc', 'abc');
INSERT INTO ex1 VALUES('강남', '강남');

-- 자료 조회
SELECT column1, LENGTH(column1) len1, column2, LENGTH(column2) len2 
FROM ex1;

COMMIT;