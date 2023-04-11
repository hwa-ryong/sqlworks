-- 사원 테이블(부서와 관계를 맺은)
CREATE TABLE employee(
    empno   NUMBER(3) PRIMARY KEY,     -- 사원번호
    ename   VARCHAR2(20) NOT NULL,     -- 사원이름
    sal     NUMBER(10),                -- 급여
    createdate  DATE DEFAULT SYSDATE,  -- 등록일
    gender  VARCHAR2(10),
    deptno  VARCHAR2(4),
    -- 외래키(FOREIGN KEY) 제약조건
    CONSTRAINT emp_fk FOREIGN KEY(deptno)
    REFERENCES dept(deptno)
);

INSERT INTO employee VALUES (100, '이강', 2500000, SYSDATE, '남자', '1000');