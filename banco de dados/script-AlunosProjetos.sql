create database bandtec;

use bandtec;






create table aluno (
R_A int primary key,
Nome_Aluno varchar(80),
Telefone_Celular varchar(20),
FK_Turma varchar(5),
foreign key (FK_Turma) references turmas(idTurma),
FK_Projeto int,
foreign key (FK_Projeto) references projeto(idProjeto),
FK_Representante int,
foreign key (FK_Representante) references representante(idRepresentante)
);




create table acompanhantes (
idAcompanhante int primary key auto_increment NOT NULL,
Nome_Acompanhante varchar(80),
Parentesco varchar(45),
FK_Aluno int,
foreign key (FK_Aluno) references aluno(R_A)
) auto_increment = 1;




create table projeto (
idProjeto int primary key auto_increment,
Nome_Projeto varchar(45),
Descricao varchar(200)
) auto_increment = 1;




create table representante (
idRepresentante int primary key auto_increment,
Nome_Representante varchar(80),
FK_Turma varchar(5),
foreign key (FK_Turma) references turmas(idTurma)
) auto_increment = 1;



insert into turmas (idTurma) values
('1ADSA'),
('1ADSB');




insert into projeto (Nome_Projeto, Descricao) values
('Ilume','Projeto sobre iluminação e segurança pública'),
('Horta Tec','Projeto sobre cultivo de hortas diversas'),
('Ar leve','Projeto sobre a umidade do ar'),
('ArTec','Projeto sobre temperatura do ar condicionado');




insert into Representante (Nome_Representante, FK_turma) values 
('Alex Fernandes','1ADSA'),
('Rafael Santos','1ADSB');




insert into aluno (R_A,Nome_Aluno,Telefone_Celular,FK_Turma,FK_Projeto,FK_Representante) values
('11111','Vinicius Tomazin','(11) 94712-1964','1ADSB',1 ,2 ),
('22222','Enzo Verissimo','(11) 94712-1964','1ADSB',1 ,2 ),
('33333','Rafael Alburquerque','(11) 94712-1964','1ADSB',1 ,2 ),
('44444','Joyce','(11) 94712-1964','1ADSB',1 ,2 ),
('55555','Rafaela','(11) 94712-1964','1ADSB',1 ,2 ),
('66666','Arnaldo Bragança','(11) 94712-1964','1ADSA', 2, 1),
('7777','Mercedes Neves','(11) 94712-1964','1ADSA', 2, 1),
('8888','Vitória Amorín','(11) 94712-1964','1ADSA', 2, 1),
('9999','Inácio Avelar','(11) 94712-1964','1ADSA', 2, 1),
('10000','Murici Fonseca','(11) 94712-1964','1ADSA', 2, 1),
('100001','Douglas Silva','(11) 94712-1964','1ADSA', 3,1),
('100002','Lucas Gonçalves','(11) 94712-1964','1ADSA', 3,1),
('100003','Yuri Alves','(11) 94712-1964','1ADSA', 3,1),
('100004','Agnaldo Santos','(11) 94712-1964','1ADSA', 3,1);


insert into acompanhantes (Nome_Acompanhante,Parentesco,FK_Aluno) values
('Joel Ramos','Pai','11111'),
('Lilian Keila','Mãe','11111'),
('Daniel Enrico','Irmão','11111'),
('José','Pai','22222'),
('Maria','Mãe','22222'),
('Eduardo','Irmão','22222'),
('Bruno','Irmão','33333'),
('Josefa','Pai','33333'),
('Odair','Pai','33333');



select * from turmas;
select * from aluno;
select * from acompanhantes;
select * from representante;
select * from projeto;




select * from aluno join projeto on aluno.fk_projeto = projeto.idprojeto;

select aluno.Nome_Aluno, aluno.FK_Turma, projeto.Nome_Projeto, projeto.Descricao from aluno join projeto on 
aluno.fk_projeto = projeto.idprojeto; 




select * from aluno join acompanhantes on aluno.r_a = acompanhantes.fk_aluno;

select aluno.Nome_Aluno, aluno.FK_Turma, acompanhantes.Nome_Acompanhante, acompanhantes.parentesco from aluno 
join acompanhantes on  aluno.r_a = acompanhantes.fk_aluno;


select * from aluno join representante on aluno.fk_representante = representante.idrepresentante;

select aluno.Nome_Aluno, aluno.FK_Turma, representante.Nome_Representante from aluno join representante on
aluno.fk_representante = representante.idrepresentante;



select * from aluno join projeto on aluno.fk_projeto = projeto.idprojeto where nome_projeto like 'ilume';

select * from aluno join projeto on aluno.fk_projeto = projeto.idprojeto 
join acompanhantes on aluno.r_a = acompanhantes.fk_aluno;

select aluno.Nome_Aluno, aluno.fk_turma, projeto.Nome_Projeto, projeto.Descricao, acompanhantes.Nome_Acompanhante, acompanhantes.parentesco 
from aluno join projeto on aluno.fk_projeto = projeto.idprojeto join acompanhantes on aluno.r_a = acompanhantes.fk_aluno;-- SELECT REFINADO 

drop database bandtec







