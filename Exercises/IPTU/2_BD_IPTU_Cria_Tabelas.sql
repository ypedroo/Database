use bd_iptu;
SET SQL_SAFE_UPDATES = 0;
create table fiscal (
	matricula int not null,
	nome varchar(30),
	data_nascimento datetime,
	data_admissao datetime,
	sexo varchar(10),
	endereco varchar(150),
	constraint pk_fiscal primary key (matricula)
);
create table proprietario (
	cpf int not null,
	nome varchar(80),
	endereco varchar(100),
	sexo varchar(10),
	data_nascimento datetime,
	constraint pk_proprietario primary key (cpf)
);
create table bairro (
	id int not null,
	localizacao varchar(100),
	representante varchar(60),
	telefone varchar(20),
	constraint pk_bairro primary key (id)
);
create table parcela (
	id int not null, 
	valor float,
	valor_desconto float,
	data_nascimento datetime,
	data_pagamento datetime,
	constraint pk_parcela primary key (id)
) ;
create table tipo_imovel (
	id int not null,
	descricao varchar(45),
	constraint pk_tipo_imovel primary key (id)
);
create table imovel (
	inscricao int not null,
	endereco varchar(45),
	area float,
	valor float,
	bairro_id int not null,
	tipo_imovel_id int not null,
	constraint pk_imovel primary key (inscricao),
	constraint fk_bairro foreign key (bairro_id) references bairro(id),
	constraint fk_tipo_imovel foreign key (tipo_imovel_id) references tipo_imovel(id)
);
create table iptu(
	imovel_inscricao int not null,
	parcela_id int not null,
	constraint fk_imovel_iptu foreign key (imovel_inscricao) references imovel (inscricao),
	constraint fk_parcela foreign key (parcela_id) references parcela (id),
	constraint pk_iptu primary key(imovel_inscricao, parcela_id)
);
create table imovel_proprietario (
	imovel_inscricao int not null,
	proprietario_cpf int not null,
	constraint fk_imovel_proprietario foreign key (imovel_inscricao) references imovel(inscricao),
	constraint fk_proprietario_imovel foreign key (proprietario_cpf) references proprietario(cpf),
	constraint pk_imovel_proprietario primary key (imovel_inscricao, proprietario_cpf)
);
create table ordem_servico (
	id int not null, 
	data_inicial datetime,
	data_final datetime,
	data_comparecimento datetime,
	autuado varchar(1),
	descricao varchar(45),
	fiscal_matricula1 int not null,
	fiscal_matricula2 int not null,
	imovel_inscricao int not null
    );
alter table ordem_servico add 
    constraint fk_fiscal1 foreign key (fiscal_matricula1) references fiscal(matricula);
alter table ordem_servico add
    constraint fk_fiscal2 foreign key (fiscal_matricula2) references fiscal(matricula);
alter table ordem_servico add
	constraint fk_imovel foreign key (imovel_inscricao) references imovel(inscricao);
alter table ordem_servico add
	constraint pk_ordem_servico primary key (id, fiscal_matricula1, fiscal_matricula2, imovel_inscricao);
