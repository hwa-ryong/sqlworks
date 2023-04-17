
SELECT * FROM emp;

-- NVL(�μ�1, �μ�2) : �μ�1�� NULL�� �ƴϸ� �μ�1�� ���, NULL�̸� �μ�2�� ���
-- �޿��� ���� ����� �˻��Ͻÿ�
SELECT * FROM emp
WHERE sal IS NULL;

SELECT ename,
       NVL(sal, 0)
FROM emp;

-- ���� �ڷ� �����ϱ�
UPDATE emp SET gender = '����'
WHERE empno = 100 OR empno = 101;

UPDATE emp SET gender = '����'
WHERE empno = 102 OR empno = 103;

-- DECODE(Į��, ����, �� , ����) �Լ� IF �Լ��� ������
-- Male, Female
SELECT ename,
       sal,
       DECODE(gender, '����', 'M', 'F') gender
FROM emp;

-- CASE WHEN ����
/*
    CASE
        WHEN ���� THEN ���1
        WHEN ���� THEN ���2
        ELSE ���3
    END
*/
SELECT ename,
       sal,
       CASE
       WHEN gender= '����' THEN 'M'
       ELSE 'F'
       END gender
FROM emp;

-- �޿��� 250���� �̻��̸� ������ '�븮'�� ǥ���ϰ�,
-- 350���� �̻��̸� '����'���� ǥ���Ͻÿ�.
SELECT ename,
       CASE
       WHEN sal >= 2500000 THEN '�븮' 
       WHEN sal >= 3500000 THEN '����'
       ELSE '���'
       END �޿�����
FROM emp;

-- DECODE() �ۼ� - ������ �ȵ� , ������ ���� ����
SELECT ename , sal,
DECODE(sal, 5000000, '����', 3000000, '�븮', '���') �޿�����
FROM emp;




