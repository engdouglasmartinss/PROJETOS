use cadastro;
create table pessoas
(
 nome varchar (30),
 data_de_nascimento date,
 sexo char(1),
 peso float,
 altura float,
 nacionalidade varchar(20)
);

drop database cadastro;

create database cadastro
default character set utf8
default collate utf8_general_ci;


use cadastro;
create table pessoas (
 id int not null auto_increment,
 nome varchar(30) not null,
 nascimento date,
 sexo enum('M','F'),
 peso decimal(5,2),
 altura decimal(3,2),
 nacionalidade varchar(20) default 'Brasil',
 primary key (id)
) default charset = utf8;

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

select * from pessoas;

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default,'Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

select * from pessoas;

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default,'Creuza', '1920-12-30', 'F', '50.2', '1.65', default);

select * from pessoas;

insert into pessoas
values
(default,'Adalgiza', '1930-11-02', 'F', '63.2', '1.75', 'Irlanda');

select * from pessoas;

insert into pessoas
values
(default,'Ana', '1975-12-22', 'F', '52.3', '1.45', 'EUA'),
(default,'Pedro', '2000-07-15', 'M', '52.3', '1.45', default),
(default,'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');

select * from pessoas

describe pessoas;

alter table pessoas
add column profissao varchar(10);

describe pessoas;

select * from pessoas;

alter table pessoas
drop column profissao;

select * from pessoas;

alter table pessoas
add column profissao varchar(10) after nome;

select * from pessoas;

alter table pessoas
modify column profissao varchar(20) not null default'';



alter table pessoas
add column codigo int first;

select * from pessoas;

alter table pessoas
modify column profissao varchar(20);

describe pessoas;

alter table pessoas
modify column profissao varchar(20) not null default'';

select * from pessoas; 

use cadastro;
insert into pessoas
values
('7',default , 'Douglas Martins', 'Engenheiro Civil', '1992-04-26', 'M', '63.1', '1.7', default );
select * from pessoas;

use cadastro;
select * from pessoas;

alter table pessoas
change column profissao prof varchar(20) not null default '';

describe pessoas;

alter table pessoas
rename to gafanhotos;

describe gafanhotos;

select * from gafanhotos;