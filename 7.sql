

������ 7
������������� 1

create view v_book as
select
	*
from PROJ.book 
where publication_year > 2015;


������������� 2

create view v_catalogue as
select
	catalogue_nm
from PROJ.catalogue;



������������� 3

create view v_book_X_catalogue as
select
	*
from PROJ.book_X_catalog;



������������� 4

create view v_author as
select
	author_last_nm, author_first_nm, author_middle_nm 
from PROJ.author
order by author_last_nm;


������������� 5

drop  view v_book_X_author;
create view v_book_X_author as
select
	* 
from PROJ.book_X_author
where book_id like '9785%';

select * from v_book_X_author;

������������� 6

create view v_publisher as
select
	overlay(publisher_id placing '***' from 3 for 4) as publisher_id
from PROJ.publisher;


������������� 7

create view v_book_X_publisher as
select
	overlay(book_id placing '******' from 3 for 7) as book_id, publisher_id 
from PROJ.book_X_publisher;


������������� 8

create view v_copy as
select
	overlay(book_id placing '******' from 3 for 7) as book_id, copy_id 
from PROJ.copy;


������������� 9

create view v_reader as
select
	reader_id, 
	reader_last_nm || ' ' || substring(reader_first_nm from 1 for 1) || '. ' || substring(reader_middle_nm from 1 for 1) || '.' as name,
	overlay(phone placing '-------' from 4 for 10) as phone
from PROJ.reader;

������������� 10

create view v_copy_X_reader as
select
	*
from PROJ.copy_X_reader
order by reader_id;



