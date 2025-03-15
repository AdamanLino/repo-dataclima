-- cria a database dataclima
create database dataclima;

-- usa a database
use dataclima;

-- cria as tabela
create table empresa (
	id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(80),
    email varchar(100)
);
 
create table usuario (
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50),
    email varchar(100),
    senha varchar(50),
    fkempresa INT,
    constraint fk_empresa foreign key (fkempresa) references empresa(idEmpresa)
);

create table dados_sensores (
	id_sensor INT PRIMARY KEY AUTO_INCREMENT,
    fk_dado int,
    umidade float,
    temperatura float,
    hora_coletada datetime,
    constraint fk_dado_sensor foreign key (fk_dado) references empresa(idEmpresa)
);

insert into table ()

select * from table;