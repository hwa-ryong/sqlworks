-- ���ѹα��� �����ϴ� ���� �̸��� ������ �ֹ��� ���� �̸� �˻�
-- join�� ���� �ʰ� union�� ���
-- ���ѹα��� �����ϴ� ���� �̸�
SELECT * FROM customer;

SELECT name as ����
FROM customer
WHERE address LIKE '%���ѹα�%';

-- ������ �ֹ��� ���� �̸� �˻�
SELECT name as ����
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

-- ���� ����(���ϱ�) - UNION
SELECT name as ����
FROM customer
WHERE address LIKE '%���ѹα�%'
UNION
SELECT name as ����
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;
