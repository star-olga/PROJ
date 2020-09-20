
ЗАДАЧА 5

Запрос 1
Для каждого издательства вывести количество экземпляров изданий,
находящихся в фонде библиотеки.

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
group by p.publisher_nm
;

Запрос 2
Вывести ФИО читателей, не имеющих книг на руках.

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

Запрос 3
Вывести список ФИО аторов по популярности,
для каждого автора найти количество экземпляров его книг,
находящихся на руках у читателей.

select 
	aba.author_last_nm, aba.author_first_nm, aba.author_middle_nm, count(*) as num_copy_on_reader
from
	(select 
		a.author_last_nm, a.author_first_nm, a.author_middle_nm, ba.book_id
	from 
		PROJ.author as a 
		join 
		PROJ.book_X_author as ba 
		on a.author_id = ba.author_id) as aba
	join
	(select 
		c.book_id, cr.copy_id
	from 
		PROJ.copy as c 
		join 
		PROJ.copy_X_reader as cr
		on c.copy_id = cr.copy_id) as ccr
	on aba.book_id = ccr.book_id
group by 
	aba.author_last_nm, aba.author_first_nm, aba.author_middle_nm
order by 
	num_copy_on_reader desc;

Запрос 4
Найти самую популярную область знаний.

select 
	tabl.catalogue_nm
from
	(select 
		ctbct.catalogue_nm, count(*) as cnt 
	from
		(select 
			ct.catalogue_nm, bct.book_id
		from 
			PROJ.catalogue as ct 
			join 
			PROJ.book_X_catalog as bct
			on ct.catalogue_id = bct.catalogue_id) as ctbct
		join
		(select 
			c.book_id, cr.copy_id
		from 
			PROJ.copy as c 
			join 
			PROJ.copy_X_reader as cr
			on c.copy_id = cr.copy_id) as ccr
		on ctbct.book_id = ccr.book_id
	group by 
		ctbct.catalogue_nm) as tabl
	where tabl.cnt = (select 
						max(tbl.cnt)
					 from
					 (select ctbct.catalogue_nm, count(*) as cnt
						 from
							(select 
								ct.catalogue_nm, bct.book_id
							from 
								PROJ.catalogue as ct 
								join 
								PROJ.book_X_catalog as bct
								on ct.catalogue_id = bct.catalogue_id) as ctbct
						join
						(select 
							c.book_id, cr.copy_id
						from 
							PROJ.copy as c 
							join 
							PROJ.copy_X_reader as cr
							on c.copy_id = cr.copy_id) as ccr
						on ctbct.book_id = ccr.book_id
						group by ctbct.catalogue_nm) as tbl);
					
Запрос 5
Вывести данные читателей, у которых есть книги на руках.

select distinct 
	r.reader_last_nm, r.reader_first_nm, r.reader_middle_nm, r.phone, r.e_mail
from 
	PROJ.reader as r
	join
	PROJ.copy_X_reader as cr 
	on r.reader_id = cr.reader_id
order by r.reader_last_nm;


