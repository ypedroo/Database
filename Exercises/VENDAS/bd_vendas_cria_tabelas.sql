use bd_vendas;

create table fornecedor(
id_fornecedor	int			not null,
ds_fornecedor	varchar(50) not null,
ds_cidade		varchar(30),
constraint pk_fornecedor
	primary key (id_fornecedor)
);

create table contatos(
id_contato		int			not null,
id_fornecedor	int			not null,
nm_contato		varchar(50),
constraint pk_contatos
	primary key (id_contato,id_fornecedor),
constraint fk_contato_forn
	foreign key (id_fornecedor) references fornecedor(id_fornecedor)
);

create table item(
id_item			int			not null,
ds_item			varchar(30),
qt_estoque		int,
pr_unit_compra	decimal(10,2),
id_fornecedor	int,
pr_unit_venda	decimal(10,2),
constraint pk_item
	primary key (id_item),
constraint fk_item_forn
	foreign key (id_fornecedor) references fornecedor(id_fornecedor)
);

create table vendedor(
id_vendedor		int			not null,
nr_cpf			int			not null,
nm_vendedor		varchar(50),
vl_salario		decimal(10,2),
vl_comissao		decimal(10,2),
constraint pk_vendedor
	primary key (id_vendedor),
constraint uk_vendedor_cpf
	unique (nr_cpf)
);

create table historico_vendas(
id_item			int			not null,
id_vendedor		int			not null,
dt_venda		datetime	not null,
qt_vendida		int,
pr_unit_venda	decimal(10,2),
constraint pk_hist_vendas
	primary key (id_item, id_vendedor, dt_venda),
constraint fk_histvend_item
	foreign key (id_item) references item(id_item),
constraint fk_histvend_vendedor
	foreign key (id_vendedor) references vendedor(id_vendedor)
);