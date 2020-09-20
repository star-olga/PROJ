
insert into PROJ.book values ('9785912602115', 'Аналитическая геометрия и линейная алгебра', 2019);
insert into PROJ.book values ('9785969203853', 'Математика для экономистов : от арифмктики ло эконометрики', 2009);
insert into PROJ.book values ('9785238012704', 'Теория вероятностей и математическая статистика', 2007);
insert into PROJ.book values ('9785901158241', 'Введение в алгебраические коды', 2014);
insert into PROJ.book values ('9785279032686', 'Математика в экономике', 2008);
insert into PROJ.book values ('9785911807597', 'Дискретная математика', 2009);
insert into PROJ.book values ('9785811408108', 'Дискретная математика', 2016);
select * from PROJ.book;

insert into PROJ.catalogue values ('01102', 'Алгебра');
insert into PROJ.catalogue values ('01104', 'Геометрия');
insert into PROJ.catalogue values ('01109', 'Вещественный и функциональный анализ');
insert into PROJ.catalogue values ('01103', 'Теория чисел');
insert into PROJ.catalogue values ('01101', 'Математическая логика и основания математики');
insert into PROJ.catalogue values ('01114', 'Дискретная математика');
insert into PROJ.catalogue values ('01110', 'Теория вероятностей и математическая статистика');
select * from PROJ.catalogue;

insert into PROJ.book_X_catalog values ('9785912602115', '01102');
insert into PROJ.book_X_catalog values ('9785912602115', '01104');
insert into PROJ.book_X_catalog values ('9785969203853', '01102');
insert into PROJ.book_X_catalog values ('9785969203853', '01109');
insert into PROJ.book_X_catalog values ('9785969203853', '01110');
insert into PROJ.book_X_catalog values ('9785238012704', '01110');
insert into PROJ.book_X_catalog values ('9785901158241', '01102');
insert into PROJ.book_X_catalog values ('9785901158241', '01114');
insert into PROJ.book_X_catalog values ('9785279032686', '01110');
insert into PROJ.book_X_catalog values ('9785911807597', '01114');
insert into PROJ.book_X_catalog values ('9785811408108', '01114');
select * from PROJ.book_X_catalog;

insert into PROJ.author values ('С12', 'Сагалович', 'Юрий', 'Львович');
insert into PROJ.author values ('С60', 'Солодовников', 'Александр', 'Самуилович');
insert into PROJ.author values ('Б11', 'Бабайцев', 'Владимир', 'Алексеевич');
insert into PROJ.author values ('Б54', 'Браилов', 'Андрей', 'Владимирович');
insert into PROJ.author values ('К79', 'Кремер', 'Наум', 'Шевелевич');
insert into PROJ.author values ('П13', 'Путко', 'Борис', 'Аркадьевич');
insert into PROJ.author values ('Т34', 'Тришин', 'Игорь', 'Михайлович');
insert into PROJ.author values ('С77', 'Старикова', 'Ольга', 'Александровна');
insert into PROJ.author values ('Н73', 'Новиков', 'Федор', 'Александрович');
insert into PROJ.author values ('Ш38', 'Шевелев', 'Юрий', 'Павлович');
select * from PROJ.author;

insert into PROJ.book_X_author values ('9785912602115', 'С77');
insert into PROJ.book_X_author values ('9785969203853', 'К79');
insert into PROJ.book_X_author values ('9785969203853', 'П13');
insert into PROJ.book_X_author values ('9785969203853', 'Т34');
insert into PROJ.book_X_author values ('9785238012704', 'К79');
insert into PROJ.book_X_author values ('9785901158241', 'С12');
insert into PROJ.book_X_author values ('9785279032686', 'С60');
insert into PROJ.book_X_author values ('9785279032686', 'Б11');
insert into PROJ.book_X_author values ('9785279032686', 'Б54');
insert into PROJ.book_X_author values ('9785911807597', 'Н73');
insert into PROJ.book_X_author values ('9785811408108', 'Ш38');
select * from PROJ.book_X_author;

insert into PROJ.publisher values ('91260', 'Северо-Восточный государственный университет');
insert into PROJ.publisher values ('96920', 'ООО "Высшее образование');
insert into PROJ.publisher values ('23801', 'ЮНИТИ-ДАНА');
insert into PROJ.publisher values ('90115', 'ИППИ РАН');
insert into PROJ.publisher values ('27903', '"Финансы и статистика"');
insert into PROJ.publisher values ('91180', 'ООО "Питер Пресс"');
insert into PROJ.publisher values ('81140', 'Лань');
select * from PROJ.publisher;

insert into PROJ.book_X_publisher values ('9785811408108', '81140');
insert into PROJ.book_X_publisher values ('9785912602115', '91260');
insert into PROJ.book_X_publisher values ('9785969203853', '96920');
insert into PROJ.book_X_publisher values ('9785238012704', '23801');
insert into PROJ.book_X_publisher values ('9785901158241', '90115');
insert into PROJ.book_X_publisher values ('9785279032686', '27903');
insert into PROJ.book_X_publisher values ('9785911807597', '91180');
select * from PROJ.book_X_publisher;

insert into PROJ.copy values ('236864', '9785912602115');
insert into PROJ.copy values ('336521', '9785912602115');
insert into PROJ.copy values ('565696', '9785912602115');
insert into PROJ.copy values ('894562', '9785969203853');
insert into PROJ.copy values ('215632', '9785238012704');
insert into PROJ.copy values ('856412', '9785901158241');
insert into PROJ.copy values ('963236', '9785901158241');
insert into PROJ.copy values ('898954', '9785901158241');
insert into PROJ.copy values ('554479', '9785279032686');
insert into PROJ.copy values ('326596', '9785911807597');
insert into PROJ.copy values ('321222', '9785811408108');
insert into PROJ.copy values ('362658', '9785811408108');
insert into PROJ.copy values ('748484', '9785811408108');
select * from PROJ.copy;

insert into PROJ.reader values ('455512', 'Абрамов', 'Юрий', 'Львович', '89148569632', 'abr100@gmail.ru');
insert into PROJ.reader values ('122360', 'Борисов', 'Александр', 'Самуилович', '89075234562', 'alex_bor@mail.ru');
insert into PROJ.reader values ('235611', 'Великанов', 'Владимир', 'Алексеевич', '89001245623', 'velva@yandex.ru');
insert into PROJ.reader values ('659654', 'Грушевский', 'Андрей', 'Владимирович', '89004051232', 'andrew_gru@mail.ru');
insert into PROJ.reader values ('858679', 'Жданович', 'Наум', 'Шевелевич', '89114561245', 'naum1945@gmail.ru');
insert into PROJ.reader values ('956313', 'Заиков', 'Борис', 'Аркадьевич', '89274578899', 'boris-zaikov@yandex.ru');
insert into PROJ.reader values ('741234', 'Куликов', 'Игорь', 'Михайлович', '89455623366', 'kulim@mail.ru');
insert into PROJ.reader values ('452377', 'Лимонова', 'Ольга', 'Александровна', '84995658841', 'limolga@gmail.com');
insert into PROJ.reader values ('125573', 'Нимерович', 'Федор', 'Александрович', '89248556233', 'f-nimer@yandex.ru');
insert into PROJ.reader values ('858938', 'Петров', 'Юрий', 'Павлович', '89248574123', 'baranka@mail.ru');
select * from PROJ.reader;

insert into PROJ.copy_X_reader values ('236864', '455512');
insert into PROJ.copy_X_reader values ('336521', '122360');
insert into PROJ.copy_X_reader values ('565696', '235611');
insert into PROJ.copy_X_reader values ('894562', '455512');
insert into PROJ.copy_X_reader values ('215632', '455512');
insert into PROJ.copy_X_reader values ('856412', '125573');
insert into PROJ.copy_X_reader values ('963236', '858938');
insert into PROJ.copy_X_reader values ('554479', '122360');
insert into PROJ.copy_X_reader values ('326596', '452377');
select * from PROJ.copy_X_reader;


