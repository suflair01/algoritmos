create database petshop; 

use petshop;


create table clientes(
ID_clientes_cpf int primary key auto_increment,
nome varchar (70),
telefone int,
Email varchar(70)
) auto_increment = 100;

insert into clientes values
(null, "anderson viera", "4542054", "andersonviera@bandec.com")

select * from clientes 

UPDATE clientes SET nome = alex barreira WHERE ID_clientes_cpf = 100
-- alterando dados da tabela

create table animais (
ID_animais int primary key auto_increment,
nome int (9), -- agora é varchar
fkDono int, -- chave estrangeira referente a tabela cliente
foreign key (fkdono) references clientes (ID_clientes_cpf) -- configuração chave estrangeira fkAula
) auto_increment = 100;

select * from animais;

insert into animais values
(null, "buddy", 103); 

ALTER TABLE animais MODIFY nome varchar (50);

select * from clientes

select * from clientes join animais on fkDono = ID_clientes_cpf;