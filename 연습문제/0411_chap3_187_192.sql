/*new book table ����*/
CREATE TABLE newbook(
bookid number PRIMARY key,
bookname VARCHAR2(20) not null,
publisher VARCHAR2(20) UNIQUE,
price number DEFAULT 10000 CHECK(price>1000));

select * from newbook;

/*newcustomer table ����*/
create table newcustomer(
custid number PRIMARY key,
name varchar2(20),
address varchar2(20),
phone varchar(30));

/*neworders table ����*/
create table neworders(
orderid number,
custid number not null,
bookid number not null,
saleprice number,
orderdate date,
primary key (orderid),
FOREIGN key(custid) references newcustomer(custid) on delete cascade);

/*�Ӽ� �߰�*/
alter table newbook add isbn varchar2(13);

/*������� ����*/
alter table newbook modify isbn number;

select * from newbook;
select * from newcustomer;
select * from neworders;

/*���̺� ����*/
drop table newbook;

/*Ʃ�� �߰�*/
insert into book(bookid,bookname,publisher,price)
values(11, '������ ����', '�Ѽ����м���', 90000);

insert into book(bookid,bookname,publisher)
values(14, '������ ����', '�Ѽ����м���');

insert into book(bookid,bookname,publisher,price)
select bookid, bookname,publisher,price
from Imported_book;


select * from book;

/*������Ʈ*/
update customer
set address='���ѹα� �λ�'
where custid=5;

update  customer
set address=(select address
from customer
where name='�迬��')
where name='�ڼ���';

select * from customer;

/*Ʃ�� ����*/
delete from customer
where custid=5;

rollback;

