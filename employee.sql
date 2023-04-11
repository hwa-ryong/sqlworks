-- ��� ���̺�(�μ��� ���踦 ����)
CREATE TABLE employee(
    empno   NUMBER(3) PRIMARY KEY,     -- �����ȣ
    ename   VARCHAR2(20) NOT NULL,     -- ����̸�
    sal     NUMBER(10),                -- �޿�
    createdate  DATE DEFAULT SYSDATE,  -- �����
    gender  VARCHAR2(10),
    deptno  VARCHAR2(4),
    -- �ܷ�Ű(FOREIGN KEY) ��������
    CONSTRAINT emp_fk FOREIGN KEY(deptno)
    REFERENCES dept(deptno)
);

INSERT INTO employee VALUES (100, '�̰�', 2500000, SYSDATE, '����', '1000');