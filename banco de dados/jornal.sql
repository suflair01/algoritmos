create database imprensa 

use imprensa 

create table jornal(
ID_jornal int primary key not null auto_increment,
nome_jornal varchar(45)
) 

select * from jornal

create table reporter(
ID_REPORTER int primary key not null auto_increment,
nome_reporter varchar(45),
aniversario date,
sexo char(1) check (sexo = 'f' or sexo = 'm'),
FK_jornal int,
foreign key (FK_jornal) references jornal (ID_jornal)
) 

select * from reporter 

insert into jornal values 
(1,'o globo'),
(2,'folha de sp');

insert into reporter values 
(1,'enzo verissimo', '2003-03-11', 'm', 1),
(2,'vini tomazin', '1999-06-14', 'm', 2),
(3,'rafaela souza', '1985-10-03', 'f', 1),
(4,'angelo seila', '1985-11-03', 'm', 2); 

update jornal set nome='fantastico' where idjornal = 2 

delete from reporter where ID_reporter = 4

select * from reporter join jornal on FK_jornal = ID_jornal 