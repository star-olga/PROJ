
ЗАДАЧА 8

Представление 1

create view v_T1 as
select 
	reader_last_nm, reader_first_nm, reader_middle_nm
from 
	PROJ.reader
where reader_id in (
	select 
		reader_id
	from 
		PROJ.reader
	except
	select distinct 
		reader_id
	from 
		PROJ.copy_X_reader);



Представление 2;

create view v_T2 as
select 
	p.publisher_nm, count(*) as num_of_copy
from 
	PROJ.publisher as p 
	join (
		select 
			c.copy_id, bp.publisher_id
		from 
			PROJ.copy as c 
			join 
			PROJ.book_X_publisher as bp 
			on c.book_id = bp.book_id) as cbp
	on p.publisher_id = cbp.publisher_id
group by p.publisher_nm;
		


