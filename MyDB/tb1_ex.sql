SELECT * FROM tb1_class;
SELECT * FROM tb1_student;

-- 조인
SELECT stu.sname, stu.age, stu.gender, cls.cname
FROM tb1_class cls, tb1_student stu
WHERE cls.cid = stu.cid;

-- 학과별 학생수를 구하시오
SELECT cls.cid, cls.cname, COUNT(*) 학생수
FROM tb1_class cls, tb1_student stu
WHERE cls.cid = stu.cid
GROUP BY cls.cid, cls.cname;


