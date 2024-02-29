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