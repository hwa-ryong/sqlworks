SELECT * FROM tb1_class;
SELECT * FROM tb1_student;

-- ����
SELECT stu.sname, stu.age, stu.gender, cls.cname
FROM tb1_class cls, tb1_student stu
WHERE cls.cid = stu.cid;

-- �а��� �л����� ���Ͻÿ�
SELECT cls.cid, cls.cname, COUNT(*) �л���
FROM tb1_class cls, tb1_student stu
WHERE cls.cid = stu.cid
GROUP BY cls.cid, cls.cname;


