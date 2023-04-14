-- �л� ���̺�
CREATE TABLE tb1_student(
    snumber NUMBER(8) PRIMARY KEY,
    sname   VARCHAR2(20) NOT NULL,
    age     NUMBER(3),
    gender  VARCHAR2(6) NOT NULL,
    address VARCHAR2(50),
    cid     NUMBER(3) NOT NULL,
    --�ܷ�Ű ��������(�а�)
    CONSTRAINT fk_class FOREIGN KEY(cid)
    REFERENCES tb1_class(cid) ON DELETE CASCADE
);

-- �л� �ڷ� ����
INSERT INTO tb1_student VALUES (20211234, '�̰�', 22, '����', '����� ���α�', 102);
INSERT INTO tb1_student VALUES (20211235, '�ڴ��', 25, '����', '��⵵ ������', 101);
INSERT INTO tb1_student VALUES (20211236, '�Ѻ��', 23, '����', '��⵵ ������', 103);

SELECT * FROM tb1_student;

-- 1. �ּҰ� '��⵵'�� �л��� �˻��Ͻÿ�.
SELECT * FROM tb1_student WHERE address LIKE '%��⵵%';







