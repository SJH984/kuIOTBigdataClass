use madangdb;
-- 4-20
create view vw_Customer
as select *
from Customer
where address Like '%대한민국%';

SELECT * FROM vw_Customer;

select * from vw_Book; 

-- 4-21
create view vw_Orders(orderid, custid, name, bookid, bookname,
saleprice, orderdate)
as select od.orderid, od.custid, cs.name,
od.bookid, bk.bookname, od.saleprice, od.orderdate
from Orders od, Customer cs, Book bk
where od.custid=cs.custid AND od.bookid=bk.bookid;

SELECT orderid, bookname, saleprice
FROM vw_Orders
WHERE name = '김연아';
select * from Customer;

-- 4-22
CREATE OR REPLACE VIEW vw_Customer (custid, name, address)
AS SELECT custid, name, address
FROM Customer
WHERE address LIKE '%영국%';

SELECT * FROM vw_Customer;

-- 4-23
DROP VIEW vw_Customer;
insert into vw_Customer value(6, "신지환", "영국 세종");
insert into Customer value(7, "박정석", "영국 대전", "000-0000-0101");
