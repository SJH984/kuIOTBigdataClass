use madangdb;

select *
from customer, orders;
-- 3-21
select *
from customer, orders
where customer.custid=orders.custid;

-- 3-22 
select *
from customer, orders
where customer.custid=orders.custid
order by customer.custid;

-- 3-23
select name, saleprice
from customer, orders
where customer.custid=orders.custid;

-- 3-24
select name, sum(saleprice)
from customer, orders
where customer.custid=orders.custid
group by customer.name
order by customer.name;

-- 3-25
SELECT Customer.name, Book.bookname
FROM Customer, Orders, Book
WHERE Customer.custid=Orders.custid AND Orders.bookid=Book.bookid;

-- 3-26
select customer.name, Book.bookname
from customer, orders, Book
where Customer.custid=orders.custid AND Orders.bookid=Book.bookid
AND Book.price=20000;

-- 3-27
select customer.name, saleprice
from Customer LEFT OUTER JOIN Orders ON
	Customer.custid=Orders.custid;
   
-- 3-28
SELECT bookname
FROM Book
WHERE price= (SELECT MIN(price) FROM Book);   

-- 3-29
SELECT name
FROM Customer
WHERE custid IN (SELECT custid FROM Orders);

-- 3-30
SELECT name 
FROM Customer
WHERE custid IN(SELECT custid
				FROM Orders
                WHERE bookid IN(SELECT bookid
								FROM Book
                                WHERE publisher='대한미디어'));
-- 3-31
SELECT b1.bookname
FROM Book b1
WHERE b1.price > (SELECT avg(b2.price)
	              FROM Book b2
                  WHERE b2.publisher=b1.publisher);
 -- 3-32
 SELECT name
 FROM Customer
 WHERE address LIKE '대한민국%'
 UNION
 SELECT name
 FROM Customer
 WHERE custid IN (SELECT custid FROM Orders);
 
 select name
 from customer
 where address like '대한민국%'
 UNION ALL
 SELECT name
 FROM Customer
 WHERE custid IN (SELECT custid from Orders);
 
 -- 3-33
 SELECT name, address
 FROM Customer cs
 WHERE EXISTS (SELECT *
				FROM Orders od
                WHERE cs.custid=od.custid);
 