USE bd_Faculdade;


CREATE TABLE ALUNO
(
	mat_aluno		int not null,
	nom_aluno		varchar (30),
	end_aluno		varchar (40),
	tip_sexo		varchar (1),
	dat_nasc		datetime,
	primary key (mat_aluno)
);

CREATE TABLE PROFESSOR
(
	mat_prof		int not null,
	nom_prof		varchar (50),
	end_prof		varchar (40),
	dat_nasc		datetime,
	tip_sexo		varchar (1),
	vlr_salario		decimal(10,2),
	primary key (mat_prof)
);


CREATE TABLE AREA
(
  	cod_area		int not null,
  	nom_area		varchar (30),
	primary key (cod_area)
);


CREATE TABLE DEPARTAMENTO
(
	cod_depto		int not null,
	des_depto		varchar (60),
	cod_area		int not null,
	primary key (cod_depto)
);


CREATE TABLE DISCIPLINA
(
  	cod_disc		int not null,
  	des_disc		varchar (50),
 	mat_prof		int ,
  	cod_disc_pre_req	int ,
  	cod_depto		int not null,
 	primary key (cod_disc)

);


CREATE TABLE ALUNODISCIPLINA
(
	mat_aluno		int not null,
	cod_disc		int not null,
	primary key (mat_aluno,cod_disc)
);

ALTER TABLE DEPARTAMENTO ADD CONSTRAINT FK_DEPARTAMENTO_AREA
	FOREIGN KEY (COD_AREA) REFERENCES AREA (COD_AREA);

ALTER TABLE DISCIPLINA ADD CONSTRAINT FK_DISCIPLINA_PROFESSOR
	FOREIGN KEY (MAT_PROF) REFERENCES PROFESSOR (MAT_PROF);

ALTER TABLE DISCIPLINA ADD CONSTRAINT FK_DISCIPLINA_DEPARTAMENTO
	FOREIGN KEY (COD_DEPTO) REFERENCES DEPARTAMENTO (COD_DEPTO);

ALTER TABLE DISCIPLINA ADD CONSTRAINT FK_DISCIPLINA_DISCIPLINA
	FOREIGN KEY (COD_DISC_PRE_REQ) REFERENCES DISCIPLINA (COD_DISC);

ALTER TABLE ALUNODISCIPLINA ADD CONSTRAINT FK_ALUPROF_ALUNO
	FOREIGN KEY (MAT_ALUNO) REFERENCES ALUNO (MAT_ALUNO);

ALTER TABLE ALUNODISCIPLINA ADD CONSTRAINT FK_ALUPROF_DISCIPLINA
	FOREIGN KEY (COD_DISC) REFERENCES DISCIPLINA (COD_DISC);
