create database toto;
\c toto;
create table person(id int primary key, firstname varchar not null, lastname varchar not null);
insert into person(id, firstname, lastname) values (1, 'John', 'Doo'), (2, 'Toto', 'Chez-les-papoos');