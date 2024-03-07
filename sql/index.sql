use madangdb;
create index ix_Book on Book(bookname);
create index ix_Book2 on Book(publisher, price);

select  * from Book where publisher ='대한미디어' AND price >= 30000;
select  * from Book where bookname = '%축구%';
select * from Book;

drop index ix_book on Book;

analyze table Book;
