insert into book(bookid,bookname, publisher, price)
values (15,'����������', '���ѹ̵��',10000);

delete from book
where publisher='�Ｚ��';

delete from book
where publisher='�̻�̵��';

update  book
set publisher=(select publisher
from book
where publisher='���ѹ̵��')
where publisher='�������ǻ�';

select * from book;
select * from bookcompany;

CREATE TABLE bookcompany(
name VARCHAR2(20) PRIMARY key ,
address VARCHAR2(20),
begin date);

alter table bookcompany add webaddress varchar2(30);

insert into bookcompany(name,address,begin,webaddress)
values('�Ѻ���ī����','����� ������', '1993-01-01', 'http://hanbit.co.kr');