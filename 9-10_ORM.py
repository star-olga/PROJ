pip install peewee
from playhouse.postgres_ext import PostgresqlExtDatabase

from peewee import *

db = PostgresqlDatabase(
    'bibl.db', user='postgres',
    password='postgres'
)


class Book(Model):
    book_id = CharField()
    book_nm = CharField()
    publication_year = IntegerField()

    class Meta:
        database = db


Book.create_table()

b1 = Book.create(book_id='9785912602115', book_nm='Аналитическая геометрия и линейная алгебра', publication_year=2019)
b2 = Book.create(book_id='9785969203853', book_nm='Математика для экономистов : от арифмктики ло эконометрики',
                 publication_year=2009)
b3 = Book.create(book_id='9785238012704', book_nm='Теория вероятностей и математическая статистика',
                 publication_year=2007)
b4 = Book.create(book_id='9785901158241', book_nm='Введение в алгебраические коды', publication_year=2014)
b5 = Book.create(book_id='9785279032686', book_nm='Математика в экономике', publication_year=2008)
b6 = Book.create(book_id='9785911807597', book_nm='Дискретная математика', publication_year=2009)
b7 = Book.create(book_id='9785811408108', book_nm='Дискретная математика', publication_year=2016)

b1.delete_instance()

b8 = Book.get(Book.book_nm == 'Математика в экономике')

for b in book.select():
    print(Book.book_id, Book.book_nm, Book.pablication_year)

for b in book.select().where(Book.pablication_year > 2010):
    print(Book.book_id, Book.book_nm, Book.pablication_year)

for b in book.select().order_by(Book.book_nm):
    print(Book.book_id, Book.book_nm, Book.pablication_year)

