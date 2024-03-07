-- 4-1
select ABS(-78), ABS(+78);
select round(321.141592, -1);
select round(3.141592, 2);
select round(321.141592, 0);

-- 4-2
select ROUND(4.875, 1);

-- 4-3
SELECT custid '고객번호', ROUND(SUM(saleprice)/COUNT(*)/2) '평균금액'
FROM Orders
GROUP BY custid;

-- 4-4
SELECT bookid, REPLACE(bookname, '야구', '농구') bookname, publisher, price
FROM Book;

-- 4-5
SELECT bookname '제목', CHAR_LENGTH(bookname) '문자수',
	LENGTH(bookname) '바이트수'
    FROM Book
    WHERE publisher='굿스포츠';
 -- 4-6
 SELECT SUBSTR(name, 1, 1) '성', COUNT(*) '인원'
 FROM Customer
 GROUP BY SUBSTR(name, 1, 1);
 -- 4-7
 SELECT orderid '주문번호', orderdate '주문일',
 ADDDATE(orderdate, INTERVAL 10 DAY) '확정'
 FROM Orders;
 -- 4-8
 SELECT orderid '주문번호', DATE_FORMAT(orderdate, '%Y-%m-%d') '주문일',
 custid '고객번호', bookid '도서번호'
 FROM Orders
 WHERE orderdate=STR_TO_DATE('20240707', '%Y%m%d');
 
 use madangdb;
 create table Mybook(
	bookid int primary key,
    price int);
  insert into Mybook(bookid, price) value (1, 10000);
  insert into Mybook(bookid, price) value (2, 20000);
  insert into Mybook(bookid, price) value (3, NULL);
  select * from Mybook;
  
  select price + 100 from Mybook where bookid = 3;
  select sum(price), avg(price), count(*), count(price), count(bookid)
  from Mybook;
  
  select name '이름', IFNULL(phone, '연락처없음') '전화번호'
  from Customer;
  -- 4 -11
 SET @seq:=0;
  
  select (@seq:=@seq+1) '순번', custid, name, phone
  from Customer
  where @seq < 2;
  
-- 4-12
select orderid, saleprice
from Orders
where saleprice <= (select avg(saleprice) from Orders);
-- 4-13
select orderid, custid, saleprice
from Orders od1
where saleprice > (select avg(saleprice)
					from Orders od2
                    where od1.custid=od2.custid);
 -- 4-14
 SELECT SUM(saleprice) 'total'
 FROM Orders
 WHERE custid IN (SELECT custid FROM Customer WHERE address LIKE '%대한민국%');
 
 -- 4-15
 select orderid, saleprice
 from Orders
 where saleprice > ALL (SELECT saleprice FROM Orders WHERE custid='3');
 
 -- 4-16
 SELECT SUM(saleprice) 'total'
 FROM Orders od
 WHERE EXISTS (SELECT * 
               FROM Customer cs
			   WHERE address LIKE '%대한민국%' AND cs.custid=od.custid);
  
  -- 4-17
  SELECT (SELECT name
          FROM Customer.cs
          WHERE cs.custid=od.custid) 'name', SUM(saleprice) 'total'
  FROM Orders od
  GROUP BY od.custid;
  
  -- 4-18
  ALTER TABLE Orders ADD bname VARCHAR(40);
  UPDATE Orders
  SET bname = (SELECT bookname
				FROM Book
                WHERE Book.bookid=Orders.bookid);
                
  -- 4-19
  SELECT cs.name, SUM(od.saleprice) 'total'
  FROM (SELECT custid, name
        FROM Customer
        WHERE custid <=2) cs,
        Orders od
       WHERE cs.custid=od.custid
       GROUP BY cs.name;
  