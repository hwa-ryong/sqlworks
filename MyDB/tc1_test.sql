-- tc1_test ���̺� ����
CREATE TABLE tc1_test(
    c1 NUMBER(2),
    c2 NUMBER(3)
);

SAVEPOINT t1; -- ������ ����
INSERT INTO tc1_test VALUES (10, 100);

SAVEPOINT t2; -- ������ ����
INSERT INTO tc1_test VALUES (20, 200);

ROLLBACK TO t2; -- t2 ROLLBACK(���)

COMMIT; -- Ŀ�� �Ϸ�

SELECT * FROM tc1_test;

