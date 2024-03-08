# questao 01
create database aulasql;
use aulasql;

create table cliente(
	id int not null,
	nome varchar(50),
	primary key(id)
);

create table crediario(
	num_crediario int not null,
	datas date,
	cliente_id int not null,
	valor decimal,
	primary key(num_crediario),
	foreign key(cliente_id) references cliente(id),
	check(valor>0)
);

create table prestacoes(
	num_crediario int not null,
	num_prestacao int not null,
	data_vencimento date,
	constraint fk_crediario foreign key(num_crediario) references crediario(num_crediario),
	primary key(num_crediario, num_prestacao)
);


#questao02
alter table crediario add qtd int not null;

alter table cliente modify column nome varchar(100) not null;

alter table prestacoes add valor_prestacao int not null;

alter table prestacoes add data_pg_prevista date;

alter table prestacoes add data_pg_efetiva date;

alter table crediario add nome_fiador varchar(100);

alter table crediario add cpf_fiador varchar(11);

#questao 03
alter table crediario drop column nome_fiador;

alter table crediario drop column cpf_fiador;

create table fiador(
	id int not null,
	cpf varchar(11),
	nome varchar(100),
	primary key(id)
);

alter table crediario add id_fiador int not null;

alter table crediario add foreign key(id_fiador) references fiador(id);
