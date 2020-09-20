

ЗАДАЧА 6

select 
	a.author_last_nm, a.author_first_nm, a.author_middle_nm
from 
	PROJ.author as a
where 
	a.author_last_nm like 'С%'
order by 
	a.author_last_nm desc;


insert into 
	PROJ.publisher 
values ('12345', 'Винни-Пух и все-все-все');


update 
	PROJ.publisher 
set 
	publisher_nm = 'OOO "Высшее образование"'
where
	publisher_id = '96920';


delete from 
	PROJ.reader 
where 
	reader_first_nm like 'Н%';










