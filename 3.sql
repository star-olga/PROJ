drop schema if exists PROJ cascade;

create schema if not exists PROJ;

create table PROJ.book (
    book_id varchar(13) primary key
    , book_nm varchar(100)
    , publication_year int
);

create table PROJ.catalogue (
    catalogue_id varchar(5) primary key
    , catalogue_nm varchar(100)
);

create table PROJ.book_X_catalog (
    book_id varchar(13) 
    , catalogue_id varchar(5) 
);

ALTER TABLE PROJ.book_X_catalog
ADD FOREIGN KEY (book_id)
REFERENCES PROJ.book(book_id);

ALTER TABLE PROJ.book_X_catalog
ADD FOREIGN KEY (catalogue_id)
REFERENCES PROJ.catalogue(catalogue_id);

create table PROJ.author (
    author_id varchar(3) primary key
    , author_last_nm varchar(20)
    , author_first_nm varchar(20)
    , author_middle_nm varchar(20)
);

create table PROJ.book_X_author (
    book_id varchar(13)
    , author_id varchar(3)
);

ALTER TABLE PROJ.book_X_author
ADD FOREIGN KEY (book_id)
REFERENCES PROJ.book(book_id);

ALTER TABLE PROJ.book_X_author
ADD FOREIGN KEY (author_id)
REFERENCES PROJ.author(author_id);

create table PROJ.publisher (
    publisher_id varchar(5) primary key
    , publisher_nm varchar(50)
);

create table PROJ.book_X_publisher (
    book_id varchar(13)
    , publisher_id varchar(5)
);

ALTER TABLE PROJ.book_X_publisher
ADD FOREIGN KEY (book_id)
REFERENCES PROJ.book(book_id);

ALTER TABLE PROJ.book_X_publisher
ADD FOREIGN KEY (publisher_id)
REFERENCES PROJ.publisher(publisher_id);

create table PROJ.copy (
    copy_id varchar(6) primary key
    , book_id varchar(13)
);

ALTER TABLE PROJ.copy
ADD FOREIGN KEY (book_id)
REFERENCES PROJ.book(book_id);

create table PROJ.reader (
    reader_id varchar(6) primary key
    , reader_last_nm varchar(20)
    , reader_first_nm varchar(20)
    , reader_middle_nm varchar(20)
    , phone varchar(11)
    , e_mail varchar(25)
);

create table PROJ.copy_X_reader (
    copy_id varchar(6)
    , reader_id varchar(6)
);

ALTER TABLE PROJ.copy_X_reader
ADD FOREIGN KEY (copy_id)
REFERENCES PROJ.copy(copy_id);

ALTER TABLE PROJ.copy_X_reader
ADD FOREIGN KEY (reader_id)
REFERENCES PROJ.reader(reader_id);

