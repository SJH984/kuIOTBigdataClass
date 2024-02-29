use madangdb;
-- 3-34
create table NewBook(
	bookid integer,
    bookname varchar(20),
    publisher varchar(20),
    price     integer);
    
drop table NewBook;
-- 3-35
create table NewBook(
	bookid integer,
    bookname varchar(20) not null,
    publisher varchar(20) unique,
    price integer default 10000 check(price >= 10000),
    primary key(bookname, publisher)
    );
    
   create table NewCustomer(
		custid integer primary key,
        name varchar(40),
        address varchar(40),
        phone varchar(30)
        );
   -- 3-36
   CREATE TABLE NewOrders (
   orderid INTEGER,
   custid INTEGER NOT NULL,
   bookid INTEGER NOT NULL,
   saleprice INTEGER,
   orderdate DATE,
   PRIMARY KEY(orderid),
   FOREIGN KEY(custid) references NewCustomer(custid) ON DELETE cascade);
   -- 3-37
   ALTER TABLE NewBook ADD isbn VARCHAR(13);
   -- 3-38
   ALTER TABLE NewBook MODIFY isbn INTEGER;
   -- 3-39
   ALTER TABLE NewBook DROP COLUMN isbn;
   -- 3-40
   ALTER TABLE NewBook MODIFY bookname VARCHAR(20) NOT NULL;
   -- 3-41
   ALTER TABLE  NewBook ADD PRIMARY KEY(bookid);
   --
    
    
    
    