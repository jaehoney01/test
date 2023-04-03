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