select bookname
from book
where bookid=1;

/*가격이 2만원 이상인 도서 이름*/

SELECT bookname
FROM book
where price>=20000;

/*박지성의 총 구매 금액*/

SELECT SUM(saleprice)
FROM orders
where custid=1;

SELECT SUM(saleprice)
FROM Customer, orders
where Customer.custid=orders.custid AND Customer.name LIKE '박지성';

/*박지성이 구매한 도서의 수*/
SELECT COUNT(*)
FROM Customer, Orders
where Customer.custid=Orders.custid AND Customer.name LIKE '박지성';

/*박지성이 구매한 책의 수*/
SELECT COUNT(publisher)
FROM Book, Customer, Orders
WHERE Book.bookid=Orders.bookid AND Customer.custid=Orders.custid AND Customer.name LIKE '박지성';


/*ch03 ex1-5*/
select count(distinct publisher)
from customer, orders, book
where customer.custid=orders.custid and orders.bookid=book.bookid and customer.name like '박지성';
/*ch03 ex1-6*/
select bookname,price,price-saleprice
from customer, orders, book
where customer.custid=orders.custid and orders.bookid=book.bookid and customer.name like '박지성';
/*ch03 ex1-7*/
select bookname
from book
where not EXISTS (select bookname,price,price-saleprice
from customer, orders
where customer.custid=orders.custid and orders.bookid=book.bookid and customer.name like '박지성');
