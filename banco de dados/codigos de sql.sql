create database -- nome do bd

use -- nome do bd

CREATE TABLE  -- nome da table (
          idinstituicao INT primary key NOT NULL auto_increment,
          nome_instituicao VARCHAR(45),
          cnpj int,
          email VARCHAR(45),
          senha varchar(45)
)

CREATE TABLE  -- nome da table  
			(
          idcivil INT NOT NULL primary key auto_increment,
          nome_completo VARCHAR(45),
          email varchar(45),
          senha varchar(45)
)

CREATE TABLE -- nome da table 
			(
          idSensor INT NOT NULL primary key auto_increment,
          Placa VARCHAR(45) NULL,
          FK_instituicao int,
          foreign key (FK_instituicao) references instituicao (idinstituicao),
          FK_civil int,
          foreign key (FK_civil) references civil (idcivil)
)



CREATE TABLE -- nome da table
			(	
         Iddados INT NOT NULL primary key auto_increment,
          UF VARCHAR(2),
          municipio varchar(45),
          bairro varchar(45),
          rua varchar(45),
          cep int,
          datahora datetime,
          luminosidade int,
          FK_sensor int,
          foreign key (FK_sensor) references sensor (idsensor)
)
          
select * from instituicao;

select * from civil;

select * from dados;

select * from sensor;

insert into instituicao values 
(null, "policia civil", "4542054", "policia.civil@gmail.com","senhapadrao");

insert into civil values 
(null, "alex barreira", "policia.civil@gmail.com", "senhapadrao");

select * from sensor join civil on FK_civil = idcivil;

select * from sensor join instituicao on FK_instituicao = idinstuicao;

UPDATE  Nome_Tabela  SET nome da coluna a ser mudada = valor novo where id da coluna 

-- contagem count
select count(*) from sensor; -- conta todos os registros na tabela sensor
select count(nomeSensor) from sensor; --  conta os registros que tem nome na tabela sensor

-- soma sum
select sum(temperatura) from sensor;

-- função avg (media)
select avg(temperatura) from sensor;

-- trncate delimita a quantidade de casas apos a virgula sem arrendondar
select truncate(sum(temperatura),2) from sensor;

-- round arrendonda
select round(sum(temperatura),2) from sensor;

-- Maior temperatura
select max(temperatura) from sensor;

-- Minimo temperatura 
select min(temperatura) from sensor;

-- group by
select * from sensor;
select  localSensor, truncate (avg(temperatura),1) group by localSensor; --  media dos sensores por local que estão instalados

ALTER TABLE nomedatable MODIFY nomedacoluna INT;

ALTER TABLE [tablename] CHANGE [columnName] [columnName] DECIMAL (10,2)
