use bd_infracoes;

create table classe
(id_classe			int		not null,
 ds_classe			varchar(30),
 constraint pk_classe primary key (id_classe)
);

create table modelo
(id_modelo			int		not null,
 ds_modelo			varchar(30),
 constraint pk_modelo primary key (id_modelo)
);

create table proprietario
(codigo				int		not null,
 nome				varchar(50),
 endereco			varchar(50),
 sexo				char(1),
 data_nasc			datetime,
 telefone			varchar(10),
 renda_mensal		decimal(10,2),
 constraint pk_proprietario
	primary key (codigo)
);

create table veiculo
(placa				int     not null,
 ano_fabric			int     not null,
 cor         		varchar(15),
 classe				int,      
 modelo				int,
 cod_proprietario	int,
 constraint pk_veiculo 
	primary key (placa),
 constraint fk_veic_class 
	foreign key (classe) references classe(id_classe),
 constraint fk_veic_modelo
	foreign key (modelo) references modelo(id_modelo),
 constraint fk_veic_propri
	foreign key (cod_proprietario) references proprietario(codigo)
);

create table tipoinfracao
(id_tipo		int			not null,
 ds_tipo		varchar(30),
 valor			decimal(10,2),
 constraint pk_tipoinfracao
	primary key (id_tipo)
);

create table infracoes
(id_infracao	int			not null,
 local			varchar(30) not null,
 data_hora		datetime,
 placa_veiculo	int			not null,
 cod_infra		int			not null,
 valor_infra	decimal(10,2),
 constraint pk_infracoes
	primary key (id_infracao),
 constraint fk_infra_tipoinfr
	foreign key (cod_infra) references tipoinfracao(id_tipo),
 constraint fk_infra_veic
	foreign key (placa_veiculo) references veiculo(placa)
);
	