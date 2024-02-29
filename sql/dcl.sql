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
 DELETE FROM CUSTOMER;
 
