-- ddl contruir dml consultar
 create database faculdadetopp;
 use faculdadetopp;
 
 create table aluno(
 mat_aluno int not null,
 nome varchar(50),
 endereco varchar (40),
 sexo varchar (1),
 constraint primary key(mat_aluno)
 );
 
 create table disciplina(
 coddisciplina int not null,
 descricao varchar(50),
 matprofessor int not null,
 coddiscprerequisito int,
 coddepartamento int not null,
constraint pk_disc primary key(coddisciplina),
constraint fk_prof FOREIGN KEY(matprofessor) references professor(matprofessor),
constraint fk_req FOREIGN KEY(coddiscprerequisito) references disciplina(coddisciplina),
constraint fk_dep FOREIGN KEY (coddepartamento) REFERENCES departamento(coddepartamento)
);

create table professor(
matprofessor int(2) not null, -- pk
nome varchar(50),
endereco varchar(40),
sexo varchar(1),
salario float,
constraint pk_prof primary key(matprofessor)
);

CREATE TABLE departamento(
coddepartamento int not null,
descricao varchar(60),
codarea int not null,
constraint pk_depto primary key(coddepartamento),
constraint fk_area FOREIGN KEY(codarea) references AREA(codarea)
);

CREATE TABLE alunodisciplina(
mataluno int not null,
coddisciplina int not null,
constraint pk_aluno primary key(mataluno),
constraint fk_aluno FOREIGN KEY(mataluno) references aluno(mataluno),
constraint pk_dico primary key(coddisciplina),
constraint fk_disc FOREIGN KEY(coddisciplina) references disciplina(coddisciplina)
);

CREATE TABLE AREA(
codarea int not null,
nomearea varchar(30),
constraint pk_area PRIMARY KEY(codarea)
);



 