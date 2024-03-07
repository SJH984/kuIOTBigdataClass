use madangdb;

-- 3-45
INSERT INTO Book(bookid, bookname, publisher, price)
	VALUES(11, "스포츠 의학", "한솔의학서적", 90000);
 select * from book;
 
 -- 3-46
 create table Imported_book(
	bookid integer primary key,
    bookname varchar(20),
    publisher varchar(20),
    price integer);
   
   select * from Imported_Book;
  insert into Imported_book(bookid, bookname, price, publisher)
	select bookid, bookname, price, publisher
    from Book;
    -- 3-47
    SET SQL_SAFE_UPDATES=0;
    UPDATE Customer
    SET address = '대한민국 부산'
    WHERE custid=5;
select *from Customer

-- 3-48
UPDATE Book
SET publisher = (SELECT publisher
				FROM imported_book
                WHERE bookid = 21)
WHERE  bookid = 14;
 
 -- 3-49
 DELETE FROM Book 
 WHERE bookid = 11;
 
 -- 3-50
 show tables;
 set sql_safe_updates=0;
 delete from Customer;
 
 delete from Customer;
 select * from Customer;
 
 select * from information_schema.table_constraints
 where table_name like 'Orders';
 alter table Orders drop foreign key Orders_ibfk_1;
 INSERT INTO Customer VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO Customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001'); 
INSERT INTO Customer VALUES (3, '김연경', '대한민국 경기도', '000-7000-0001');
INSERT INTO Customer VALUES (4, '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO Customer VALUES (5, '박세리', '대한민국 대전',  NULL);
 

 
