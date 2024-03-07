delimiter //;
create procedure dorepeat(p1 int)
begin
		set @x =0;
        repeat
        set @x = @x+1;
        until @x > p1
        end repeat;
        end;
//InsertBookInsertBook
delimiter; 

call dorepeat(100);
select @x;

call Insertbook(13, '스포츠과학', '마당과학서적', 25000);
select * from Book;


CALL BookInsertOrUpdate(15, '스포츠 즐거움', '마당과학서적', 25000);  
CALL BookInsertOrUpdate(15, '스포츠 즐거움', '마당과학서적', 20000);   
CALL BookInsertOrUpdate(15, '스포츠 즐거움', '마당과학서적', 30000); 
 
call averagePrice(@myValue);
select @myValue;
 
CALL Interest();

        