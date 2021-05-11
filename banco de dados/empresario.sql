create database empresas 

use empresas 

create table loja(
ID_loja int primary key not null auto_increment,
nome_loja varchar(45)
)  

create table categoria(
ID_categoria int primary key not null auto_increment,
tipo varchar (45)
)

create table produto(
ID_produto int primary key not null auto_increment,
nome_produto varchar(45),
FK_categoria int,
foreign key (FK_categoria) references categoria (ID_categoria)
) 

create table vendas(
ID_vendas int primary key not null auto_increment,
FK_loja int,
foreign key (FK_loja) references loja (ID_loja),
FK_produto int,
foreign key (FK_produto) references produto(ID_produto),
preco float
)


insert into loja values 
(1,'ponto frio'),
(2,'americanas'),
(3,'magalu');

insert into categoria values 
(1,'limpeza'),
(2,'eletronico'),
(3,'alimento');

insert into produto values 
(1,'nescau', 3),
(2,'pao' ,3),
(3,'mouse', 2), 
(4,'notebook', 2),
(5,'detergente', 1);

insert into vendas values
(2, 3, 4, 9.80),
(3, 2, 5, 6),
(4, 2, 2, 10),
(5, 1, 1, 7.50),
(6, 3, 1, 7.70);
-- (1, 3, 4, 4.50);

-- id, loja, produto, preço

-- 4

select * from loja

select * from produto

select * from categoria

select * from vendas

-- 5
select * from produto join categoria on FK_categoria = ID_categoria

-- 6
select * from produto join categoria on FK_categoria = ID_categoria where FK_categoria = 2 

-- 7 
select avg(preco) from vendas 

select sum(preco) from vendas 

-- 8 
select max(preco) from vendas

select min(preco) from vendas 

-- 9 
select * from produto join vendas on FK_produto = ID_produto join loja on FK_loja = ID_loja 

-- 10 
select * from categoria join produto on FK_categoria = ID_categoria join vendas on FK_produto = ID_produto join loja on FK_loja = ID_loja 

-- 11

-- 12 

-- 13 
select sum(preco),ID_loja from vendas join loja on FK_loja = ID_loja group by id_loja

select avg(preco),ID_loja from vendas join loja on FK_loja = ID_loja group by id_loja 

-- 14
select ID_produto, max(preco), min(preco) from vendas join produto on FK_produto = ID_produto group by id_produto  

