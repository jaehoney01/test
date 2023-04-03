select bookname
from book
where bookid=1;

/*������ 2���� �̻��� ���� �̸�*/

SELECT bookname
FROM book
where price>=20000;

/*�������� �� ���� �ݾ�*/

SELECT SUM(saleprice)
FROM orders
where custid=1;

SELECT SUM(saleprice)
FROM Customer, orders
where Customer.custid=orders.custid AND Customer.name LIKE '������';

/*�������� ������ ������ ��*/
SELECT COUNT(*)
FROM Customer, Orders
where Customer.custid=Orders.custid AND Customer.name LIKE '������';

/*�������� ������ å�� ��*/
SELECT COUNT(publisher)
FROM Book, Customer, Orders
WHERE Book.bookid=Orders.bookid AND Customer.custid=Orders.custid AND Customer.name LIKE '������';
