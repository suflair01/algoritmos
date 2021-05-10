create database empresa;

use database empresa; 

create table departamento(
ID_departamento int primary key not null auto_increment,
area_departamento varchar (45),
andar_departamento int
) auto_increment = 1;

create table funcionario(
ID_funcionario int primary key not null auto_increment,
nome_funcionario varchar(45),
email_funcionario varchar(45),
FK_departamento int 
foreign key (FK_departamento) references (ID_departamento)
FK_chefe int
foreign key (FK_chefe) references (ID_funcionario)
)

insert into departamento values
('developers','1'),
('marketing','5'),
('banco de dados','7');

-- primeiro vou inserir 6 chefes, 2 de cada departamento deixando a fk null
insert funcionario (nome_funcionario, email_funcionario, FK_departamento) values 

('Enzo verissimo', 'enverissimo@gmail.com', '1'),
('alex barreira', 'alexbarreira@gmail.com', '1'),

('vinicius tomazin', 'vinitomazin@gmail.com', '2'),
('rafael souza', 'rafasouza@gmail.com', '2'),

('anderson viera', 'anderviera@gmail.com', '3'),
('carla verissimo', 'carlaver@gmail.com', '3');

-- agora vou adicionar 12 funcionarios, 4 em cada departamento, 2 de cada chefe

insert into funcionario values
-- funcionario do chefe ID_1
('felipe feitosa', 'felipefei@gmail.com', '1','1'),
('gabriela dantas', 'gabidantas@gmail.com', '1','1'),

-- funcionario do chefe ID_2
('ana clara', 'anaclara@gmail.com', '1','2'),
('gabriel ferreira', 'gaferreira@gmail.com', '1','2'),

-- funcionario do chefe ID_3
('darius donato', 'dariusnato@gmail.com', '2','3'),
('matheus sales', 'sales@gmail.com', '2','3'),

-- funcionario do chefe ID_4
('yoshi ramos', 'yoshialg@gmail.com', '2','4'),
('son goku', 'goku@gmail.com', '2','4'),

-- funcionario do chefe ID_5
('andre melo', 'meloandre@gmail.com', '3','5'),
('william souza', 'will@gmail.com', '3','5'),

-- funcionario do chefe ID_6
('cirilo batista', 'cirilo@gmail.com', '3','6'),
('maria joaquina', 'maria@gmail.com', '3','6'),


drop database empresa;








