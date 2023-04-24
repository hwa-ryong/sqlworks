SELECT * FROM customer;
SELECT * FROM orders;
SELECT * FROM book;


-- JOIN(��������-EQUI JOIN) - ����� �κ�(������, AND)
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

-- 3���� ���̺� ���� (���� �ֹ��� ������ �̸��� �ǸŰ����� ���Ͻÿ�)
SELECT cus.name, bk.bookname, ord.saleprice
FROM customer cus, orders ord, book bk
WHERE cus.custid = ord.custid
  AND bk.bookid = ord.bookid;
    

-- '������' ���� �ֹ��� ������ �̸��� �ǸŰ���, �ֹ����� ���Ͻÿ�
SELECT cus.name, bk.bookname, ord.saleprice, ord.orderdate
FROM customer cus, orders ord, book bk
WHERE cus.custid = ord.custid
    AND bk.bookid = ord.bookid
    AND cus.name = '������';
    
-- �ܺ����� ('+' ������ ���) : JOIN ���ǿ� �����ϴ� �����Ͱ� �ƴϾ �˻��ϴ� ���
-- �ֹ��� ���� ���� �����Ͽ� ���� �̸��� �ֹ��� ������ �ǸŰ����� ã���ÿ�
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid(+);

-- ǥ�� SQL - LEFT OUTER JOIN ON -
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
    ON cus.custid = ord.custid
    ORDER BY cus.name;

    
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid;
    
-- '�Ȼ�' ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�(GROUB BY��, HAVING ����)
SELECT cus.name, SUM(saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name
HAVING cus.name = '�Ȼ�';


-- ǥ�� SQL - INNER JOIN ON-
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
     ON cus.custid = ord.custid
     ORDER BY cus.name;

