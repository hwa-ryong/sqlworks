-- ���� ����
select * from book;

-- 1��
SELECT name, address
FROM customer;

-- 2��
SELECT name, address, phone
FROM customer;

-- 3��
SELECT *
FROM customer
WHERE address NOT LIKE '%����%';

-- 4��
SELECT *
FROM customer
WHERE name IN ('�迬��', '�Ȼ�');

-- 5��
SELECT *
FROM customer
WHERE address NOT LIKE ('%���ѹα�%');

-- 6��
SELECT *
FROM customer
WHERE phone IS NULL;

-- 7��
SELECT *
FROM customer
ORDER BY name;

-- 8��
SELECT COUNT(*) ���ο���
FROM customer;





