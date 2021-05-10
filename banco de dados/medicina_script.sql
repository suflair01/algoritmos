create database medicina

use medicina

create table medicos (
IDcrm int not null auto_increment primary key,
nome_medico varchar(45),
especialidade varchar,
telefone int
)

select * from medicos 

create table consulta (
IDconsulta int not null auto_increment primary key,
sala varchar(45),
assunto varchar(45),
datahora datetime
FKmedico int,
foreign key (FKmedico) references medicos (IDcrm)
FKpaciente int,
foreign key (FKpaciente) references pacientes (IDpaciente)
)

select * from consulta

create table pacientes (
IDpaciente int not null auto_increment primary key,
nome_paciente varchar(45),
telefone int
)

select * from pacientes




