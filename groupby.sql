-- GROUP BY�� ROLLUP(), CUBE()
-- �μ����̺�(�μ���ȣ, �����̸�, �޿�)
CREATE TABLE department(
        dept_no VARCHAR2(3),
        job_nm  VARCHAR2(30),
        salary  NUMBER(10)
);

-- �ڷ� ����
INSERT INTO department VALUES ('100', '���ǻ�', 3300000);
INSERT INTO department VALUES ('100', '������', 4300000);
INSERT INTO department VALUES ('200', '���ǻ�', 5000000);
INSERT INTO department VALUES ('200', '�����ͺм���', 4000000);
INSERT INTO department VALUES ('200', '������', 6000000);

SELECT * FROM department;

-- �μ��� �޿� �Ѱ� ���ϱ�
SELECT dept_no,
        SUM(salary)
FROM department
GROUP BY dept_no;

-- 
SELECT dept_no, job_nm,
        SUM(salary)
FROM department
GROUP BY ROLLUP(dept_no, job_nm)
ORDER BY dept_no;


-- �μ���, ������ �Ұ�, �Ѱ�
SELECT dept_no, job_nm,
        SUM(salary)
FROM department
GROUP BY CUBE(dept_no, job_nm)
ORDER BY dept_no;

-- �μ���, ������ �Ұ�
SELECT dept_no, job_nm,
        SUM(salary)
FROM department
GROUP BY GROUPING SETS(dept_no, job_nm)
ORDER BY dept_no;


