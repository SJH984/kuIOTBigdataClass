-- 4-1
select ABS(-78), ABS(+78);
select round(321.141592, -1);
select round(3.141592, 2);
select round(321.141592, 0);

-- 4-3
SELECT custid '고객번호', ROUND(SUM(saleprice)/COUNT(*)/2) '평균금액'
FROM Orders
GROUP BY custid;

-- 4-4
SELECT bookid, REPLACE(bookname, '야구', '농구') bookname, publisher, price
FROM Book;