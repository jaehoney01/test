/*���缭�� ������ �Ѽ�*/
SELECT COUNT(*)
FROM Book;

/*���缭���� ������ ����ϴ� ���ǻ��� �Ѽ�*/
SELECT COUNT(distinct publisher)
from Book;

/*��� ���� �̸�,�ּ�*/
SELECT name, address
from Customer;

/*2020��7��4��-7��7�� ���̿� �ֹ����� ������ �ֹ���ȣ*/
SELECT Orderid
from Orders
where orderdate BETWEEN '2020-07-04' AND '2020-07-07';

/*2020��7��4��-7��9�� ���̿� �ֹ����� ������ ������ ������ �ֹ���ȣ*/
SELECT Orderid
from Orders
where orderdate not BETWEEN '2020-07-04' AND '2020-07-07';

/*���� '��'���� ���� �̸��� �ּ�*/
SELECT name, address
from Customer
where name LIKE '��%';

/*���� '��'���̰� �̸��� '��'�� ������ ���� �̸��� �ּ�*/
SELECT name, address
from Customer
where name LIKE '��%��';