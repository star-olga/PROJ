
insert into PROJ.book values ('9785912602115', '������������� ��������� � �������� �������', 2019);
insert into PROJ.book values ('9785969203853', '���������� ��� ����������� : �� ���������� �� ������������', 2009);
insert into PROJ.book values ('9785238012704', '������ ������������ � �������������� ����������', 2007);
insert into PROJ.book values ('9785901158241', '�������� � �������������� ����', 2014);
insert into PROJ.book values ('9785279032686', '���������� � ���������', 2008);
insert into PROJ.book values ('9785911807597', '���������� ����������', 2009);
insert into PROJ.book values ('9785811408108', '���������� ����������', 2016);
select * from PROJ.book;

insert into PROJ.catalogue values ('01102', '�������');
insert into PROJ.catalogue values ('01104', '���������');
insert into PROJ.catalogue values ('01109', '������������ � �������������� ������');
insert into PROJ.catalogue values ('01103', '������ �����');
insert into PROJ.catalogue values ('01101', '�������������� ������ � ��������� ����������');
insert into PROJ.catalogue values ('01114', '���������� ����������');
insert into PROJ.catalogue values ('01110', '������ ������������ � �������������� ����������');
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

insert into PROJ.author values ('�12', '���������', '����', '�������');
insert into PROJ.author values ('�60', '������������', '���������', '����������');
insert into PROJ.author values ('�11', '��������', '��������', '����������');
insert into PROJ.author values ('�54', '�������', '������', '������������');
insert into PROJ.author values ('�79', '������', '����', '���������');
insert into PROJ.author values ('�13', '�����', '�����', '����������');
insert into PROJ.author values ('�34', '������', '�����', '����������');
insert into PROJ.author values ('�77', '���������', '�����', '�������������');
insert into PROJ.author values ('�73', '�������', '�����', '�������������');
insert into PROJ.author values ('�38', '�������', '����', '��������');
select * from PROJ.author;

insert into PROJ.book_X_author values ('9785912602115', '�77');
insert into PROJ.book_X_author values ('9785969203853', '�79');
insert into PROJ.book_X_author values ('9785969203853', '�13');
insert into PROJ.book_X_author values ('9785969203853', '�34');
insert into PROJ.book_X_author values ('9785238012704', '�79');
insert into PROJ.book_X_author values ('9785901158241', '�12');
insert into PROJ.book_X_author values ('9785279032686', '�60');
insert into PROJ.book_X_author values ('9785279032686', '�11');
insert into PROJ.book_X_author values ('9785279032686', '�54');
insert into PROJ.book_X_author values ('9785911807597', '�73');
insert into PROJ.book_X_author values ('9785811408108', '�38');
select * from PROJ.book_X_author;

insert into PROJ.publisher values ('91260', '������-��������� ��������������� �����������');
insert into PROJ.publisher values ('96920', '��� "������ �����������');
insert into PROJ.publisher values ('23801', '�����-����');
insert into PROJ.publisher values ('90115', '���� ���');
insert into PROJ.publisher values ('27903', '"������� � ����������"');
insert into PROJ.publisher values ('91180', '��� "����� �����"');
insert into PROJ.publisher values ('81140', '����');
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

insert into PROJ.reader values ('455512', '�������', '����', '�������', '89148569632', 'abr100@gmail.ru');
insert into PROJ.reader values ('122360', '�������', '���������', '����������', '89075234562', 'alex_bor@mail.ru');
insert into PROJ.reader values ('235611', '���������', '��������', '����������', '89001245623', 'velva@yandex.ru');
insert into PROJ.reader values ('659654', '����������', '������', '������������', '89004051232', 'andrew_gru@mail.ru');
insert into PROJ.reader values ('858679', '��������', '����', '���������', '89114561245', 'naum1945@gmail.ru');
insert into PROJ.reader values ('956313', '������', '�����', '����������', '89274578899', 'boris-zaikov@yandex.ru');
insert into PROJ.reader values ('741234', '�������', '�����', '����������', '89455623366', 'kulim@mail.ru');
insert into PROJ.reader values ('452377', '��������', '�����', '�������������', '84995658841', 'limolga@gmail.com');
insert into PROJ.reader values ('125573', '���������', '�����', '�������������', '89248556233', 'f-nimer@yandex.ru');
insert into PROJ.reader values ('858938', '������', '����', '��������', '89248574123', 'baranka@mail.ru');
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


