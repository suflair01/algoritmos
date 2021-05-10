create database teste

use teste

CREATE TABLE revistas (
  id_revista int  NOT NULL AUTO_INCREMENT,
  nome varchar(40) DEFAULT NULL,
  categoria varchar(40) DEFAULT NULL,
  fk_editora int DEFAULT NULL,
  PRIMARY KEY (id_revista),
  KEY fk_editora (fk_editora));

  insert into revistas (nome,categoria) values ('veja', 'jornalistica');
  insert into revistas (nome,categoria) values ('istoe', 'jornalistica');
  insert into revistas (nome,categoria) values ('mundo interessante', 'curiosidades');
  
  select * from editora
  
  drop table revistas
  
  CREATE TABLE editora (
  id_editora int  NOT NULL AUTO_INCREMENT,
  nome varchar(40) DEFAULT NULL,
  dono varchar(40) DEFAULT NULL,
  PRIMARY KEY (id_editora)); 
  
  insert into editora (nome,dono) values ('editora_veja', 'seila');
  insert into editora (nome,dono) values ('editora_istoe', 'pessoa');
  insert into editora (nome,dono) values ('editora_mundo', 'eu nao sei'); 
  

  

