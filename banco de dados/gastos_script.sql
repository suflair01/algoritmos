create database gastos

use gastos

create table pessoa (
IDpessoa int not null auto_increment primary key,
nome varchar(45),
datanascimento date,
profissão varchar(45)
)

create table gastos (
IDgasto int not null auto_increment primary key,
dataGasto date,
motivo varchar(45),
valor int,
FKpessoa int,
foreign key (FKpessoa) references pessoa (IDpessoa)
) 

select * from pessoa

insert into pessoa values 
(null, "enzo", "2021/04/1","estudante");

insert into pessoa values 
(null, "alex", "2000/05/22","professor");

insert into pessoa values 
(null, "vinicius", "1980/10/12","estudante");


select * from gastos

insert into gastos values 
(null, "2021/03/09", "alimentação", "20","1");

insert into gastos values 
(null, "2021/03/12", "transporte", "5","1");
-- gastos do ID 1

select * from gastos

insert into gastos values 
(null, "2021/03/09", "alimentação", "10","2");

insert into gastos values 
(null, "2021/03/12", "celular novo", "1500","2");
-- gastos do ID 2

select * from gastos

insert into gastos values 
(null, "2021/03/09", "celular novo", "700","3");

insert into gastos values 
(null, "2021/03/12", "mitsubishi eclipse", "20000","3");
-- gastos do ID 3




select * from gastos where IDgasto = 1

select * from gastos where motivo like "cel%"

delete from gastos where IDgasto in (1, 2);
-- para deletar mais de um registro

select * from  gastos join pessoa on FKpessoa = IDpessoa
-- join mostrando as pessoas e seus gastos

select * from  gastos join pessoa on FKpessoa = IDpessoa where IDpessoa = 1
-- join de apenas uma pessoa, por meio de seu id

update gastos set motivo = "marea turbo" where IDgasto = 6
-- atualizando o id 6 dos gastos,indo de mitsubishi para marea

select * from gastos

drop database gastos