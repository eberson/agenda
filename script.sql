create database agenda;

use agenda;

create table contato(
    id integer auto_increment primary key,
    nome varchar(100) not null,
    email varchar(255) not null,
    telefone varchar(30)
);