

������ 6

select 
	a.author_last_nm, a.author_first_nm, a.author_middle_nm
from 
	PROJ.author as a
where 
	a.author_last_nm like '�%'
order by 
	a.author_last_nm desc;


insert into 
	PROJ.publisher 
values ('12345', '�����-��� � ���-���-���');


update 
	PROJ.publisher 
set 
	publisher_nm = 'OOO "������ �����������"'
where
	publisher_id = '96920';


delete from 
	PROJ.reader 
where 
	reader_first_nm like '�%';










