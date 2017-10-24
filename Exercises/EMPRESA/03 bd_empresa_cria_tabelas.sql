use bd_empresa_basico;

create table empregado
(cpf              int          not null,
 nome             varchar(50)  not null,
 endereco         varchar(50),
 sexo             char(1)      not null,
 data_nascimento  datetime,
 sal_emp          int,
 lotacao		  int,
 constraint pk_empregado
   primary key (cpf)
);

create table departamento
(numero_departamento int         not null,
 nome_departamento   varchar(50) not null,
 cpf_gerente         int         not null,
 constraint pk_departamento
   primary key (numero_departamento)
);

alter table empregado
add constraint fk_empregado_departamento
    foreign key (lotacao) references departamento (numero_departamento);


alter table departamento
add constraint fk_departamento_empregado
   foreign key (cpf_gerente) references empregado (cpf);

create table projeto
(numero_projeto     int         not null,
 nome_projeto       varchar(50) not null,
 localizacao        varchar(30),
 depto_controlador  int         not null,
 constraint pk_projeto
   primary key (numero_projeto),
 constraint fk_projeto_departamento
   foreign key (depto_controlador) references departamento (numero_departamento)
);


create table empregado_projeto
(cpf_empregado      int         not null,
 numero_projeto     int         not null,
 constraint pk_empragado_projeto
   primary key (cpf_empregado,numero_projeto),
 constraint fk_empproj_empregado
   foreign key (cpf_empregado) references empregado (cpf),
 constraint fk_empproj_projeto
   foreign key (numero_projeto) references projeto (numero_projeto)
);


create table dependente
(cod_dependente     int         not null,
 cpf_empregado      int         not null,
 nome_dependente    varchar(50),
 data_nascimento    datetime,
 parentesco         varchar(50),
 sexo               char(1)     not null,
 constraint pk_dependente
   primary key(cod_dependente),
 constraint fk_dependente_empregado
   foreign key (cpf_empregado) references empregado (cpf)
);

