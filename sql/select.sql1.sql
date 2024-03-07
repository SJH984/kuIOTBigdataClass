select bookname, price from book;

select price, bookname from book;

select bookid, bookname, publisher, price from Book;

select * from Book;

select publisher from Book;
select distinct publisher from Book;

select * from Book;
select * from Book where  price < 20000;

select * from Book where price between 10000 and 20000;
select * from Book where price >= 20000 and price <= 20000;

select * from Book where publisher in ('굿스포츠', '대한미디어');
select * from Book where publisher not in ('굿스포츠', '대한미디어');

select bookname as 책이름, publisher as 관리자 from Book where bookname like ' 축구의 역사';
select bookname, publisher from Book where bookname like '%축구%';
select * from Book where bookname like '_구%';

select * from Book where bookname LIKE '%축구%' and price >=20000;
select * from Book where publisher = '굿스포츠' or publisher ='대한미디어';
select * from Book order by bookname;
select * from Book order by price, bookname;
select * from Book order by DESC, publisher ASC;
select SUM(saleprice) from Orders;
select SUM(saleprice) AS 총매출 from Orders;
select SUM(saleprice) AS 총매출 from Orders where custid=2;
select SUM(saleprice) AS Total, AVG(saleprice) AS Average, MIN(saleprice) AS Minium, MAX(saleprice) AS Maxium from Orders;
select COUNT(*) from Orders;
select COUNT(*) from Customer;
select count(phone) from Customer;
select custid, COUNT(*) AS 도서수량, SUM(saleprice) AS 총액 from Orders group by custid;
select custid, COUNT(*) AS 도서수량 from Orders where saleprice >= 8000 group by custid having count(*)>= 2;