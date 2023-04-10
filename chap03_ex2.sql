/*마당서점 도서의 총수*/
SELECT COUNT(*)
FROM Book;

/*마당서점에 도서를 출고하는 출판사의 총수*/
SELECT COUNT(distinct publisher)
from Book;

/*모든 고객의 이름,주소*/
SELECT name, address
from Customer;

/*2020년7월4일-7월7일 사이에 주문받은 도서의 주문번호*/
SELECT Orderid
from Orders
where orderdate BETWEEN '2020-07-04' AND '2020-07-07';

/*2020년7월4일-7월9일 사이에 주문받은 도서를 제외한 도서의 주문번호*/
SELECT Orderid
from Orders
where orderdate not BETWEEN '2020-07-04' AND '2020-07-07';

/*성이 '김'씨인 고객의 이름과 주소*/
SELECT name, address
from Customer
where name LIKE '김%';

/*성이 '김'씨이고 이름이 '아'로 끝나는 고객의 이름과 주소*/
SELECT name, address
from Customer
where name LIKE '김%아';

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
