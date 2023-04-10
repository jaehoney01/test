
/*박지성이 구매한 도서의 출판사 수 */
SELECT COUNT(*) PUBLISHER
FROM BOOK, ORDERS
WHERE book.BOOKID = orders.BOOKID
AND ORDERS.CUSTID = 1;
/*박지성이 구매한 도서의 이름,가격,정가와 판매가격의 차이 price-saleprice*/ 
SELECT book.BOOKNAME, orders.SALEPRICE, book.PRICE-orders.SALEPRICE
FROM BOOK, ORDERS
WHERE book.BOOKID = orders.BOOKID
AND ORDERS.CUSTID = 1;
/*박지성이 구매하지 않은 도서의 이름*/
SELECT DISTINCT book.BOOKNAME
FROM BOOK, ORDERS
WHERE book.BOOKID = orders.BOOKID
AND ORDERS.CUSTID NOT IN (1);
/*주문하지 않은 고객의 이름*/
SELECT customer.NAME
FROM CUSTOMER
WHERE custid NOT IN (
SELECT DISTINCT orders.custid
FROM ORDERS
);
/*주문 금액의 총액과 주문의 평균 금액*/
SELECT sum(orders.SALEPRICE), avg(orders.SALEPRICE)
FROM ORDERS;
/*고객의 이름과 고객별 구매액*/
SELECT DISTINCT customer.name, orders.SALEPRICE
FROM CUSTOMER, ORDERS
WHERE CUSTOMER.CUSTID = ORDERS.CUSTID
ORDER BY NAME;
/*고객의 이름과 고객이 구매한 도서목록*/
SELECT DISTINCT customer.name, book.BOOKNAME
FROM CUSTOMER, book, ORDERS
WHERE CUSTOMER.CUSTID = ORDERS.CUSTID
AND book.BOOKID = orders.BOOKID
ORDER BY NAME;
/*도서의 가격과 판매가격의 차이가 가장 많은 주문*/
SELECT *
FROM book, ORDERS
WHERE book.BOOKID = orders.BOOKID
AND book.PRICE-orders.SALEPRICE = (
SELECT max(book.PRICE-orders.SALEPRICE)
FROM book, ORDERS
WHERE book.BOOKID = orders.BOOKID
);
/*도서의 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름 */
SELECT customer.NAME
FROM CUSTOMER, ORDERS
WHERE CUSTOMER.CUSTID = ORDERS.CUSTID
GROUP BY customer.NAME
HAVING avg(orders.SALEPRICE) > (
SELECT avg(orders.SALEPRICE)
FROM ORDERS
);




/*ch03 ex2-8*/
select name
from customer
where name not in (select name from customer, orders where customer.custid=orders.custid);
/*ch03 ex2-9*/
select sum(saleprice),avg(saleprice)
from orders;
/*ch03 ex2-10*/
select name, sum(saleprice) as total
from customer, orders
where customer.custid=orders.custid
group by name;
/*ch03 ex2-11*/
select name, book.bookname
from customer, orders, book
where customer.custid=orders.custid and orders.bookid=book.bookid;
/*ch03 ex2-12*/
select *
from book, orders
where book.bookid=orders.bookid and price-saleprice=(select max(price-saleprice) from book, orders where book.bookid=orders.bookid);
/*ch03 ex2-13*/
select name, avg(saleprice)
from customer, orders
where customer.custid=orders.custid
group by name 
having avg(saleprice)>(select avg(saleprice) from orders);

