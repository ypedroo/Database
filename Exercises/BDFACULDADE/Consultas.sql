use bd_Faculdade_1
set SQL_SAFE_UPDATES = 0;

#ITEM A
select des_disc
from DISCIPLINA d, DEPARTAMENTO dp
where d.cod_depto = dp.cod_depto;

#ITEM B
#Liste matrícula e nomes dos alunos que cursam a disciplina Banco de Dados I.
select a.mat_aluno, a.nom_aluno
from ALUNO a inner join(select ad.mat_aluno from ALUNODISCIPLINA ad, DISCIPLINA d where ad.cod_disc = d.cod_disc and des_disc like '%Banco_de_Dados_%') e
on a.mat_aluno = e.mat_aluno;

/*ITEM C
Liste a descrição das disciplinas e nome do seu respectivo professor, daquelas que são do
departamento de Computação*/
select de.des_disc, pr.nom_prof
from PROFESSOR pr inner join(select d.des_disc,d.mat_prof from DISCIPLINA d, DEPARTAMENTO dp where d.cod_depto = dp.cod_depto and dp.des_depto like '%Computa_ao%') de
on pr.mat_prof = de.mat_prof;

/*ITEM D
Encontre as disciplinas ministradas pelo professor Fernando Siqueira.*/
select d.des_disc, p.nom_prof
from DISCIPLINA d, PROFESSOR p
where p.mat_prof = d.mat_prof and nom_prof like '%_Siqueira%';

/*ITEM E 
Encontre os alunos que cursam disciplinas da área Ciências Tecnológicas.
TA ERRADO */
select a.nom_aluno
from ALUNO a inner join (select ad.mat_aluno from ALUNODISCIPLINA ad, DISCIPLINA d) as ad
on a.mat_aluno = ad.mat_aluno
WHERE (select d.cod_disc from DISCIPLINA d inner join (select dp.cod_depto from DEPARTAMENTO dp, AREA ar where nom_area like '%_TECNOLOGICAS%')as dpa
on d.cod_disc = dpa.cod_disc) and a.nom_aluno is not null
on d.cod_depto = dpa.cod_depto) f
;
-- questão 18
/*item a
Liste o nome das disciplinas do departamento de Computação*/
 select d.des_disc, dp.des_depto
 from DISCIPLINA d , DEPARTAMENTO dp
 where d.cod_depto = dp.cod_depto and des_depto like '%Computa__o%'
 group by des_disc,des_depto;
/*item b
Liste os nomes dos alunos que cursam a disciplina Banco de Dados I e o nome do professor que
ministra esta disciplina. REVER*/
#as chaves dos selects dos joins tem q ser as mesmas
select a.nom_aluno, p.nom_prof
from ALUNO a, ALUNODISCIPLINA ad, DISCIPLINA d, PROFESSOR p
where a.mat_aluno = ad.mat_aluno and
	  ad.cod_disc = d.cod_disc and
	  d.mat_prof = p.mat_prof  and
      d.des_disc like '%Banco_%';

/*item c
Liste as disciplinas da área de Ciências Tecnológicas*/
select d.des_disc
from	DISCIPLINA d, DEPARTAMENTO dp ,AREA ar
where d.cod_depto = dp.cod_depto and
	  ar.cod_area = dp.cod_area 	 and
      ar.nom_area like '%Ci_ncias Tecnol_gicas%';
      

/* OUTRA FORMA ITEM C
select d.des_disc
from DISCIPLINA d 
inner join (select dp.cod_depto from DEPARTAMENTO dp, AREA ar where nom_area like '%_TECNOLOGICAS%')as dpa
on d.cod_depto = dpa.cod_depto*/

/*ITEM D
Encontre as disciplinas ministradas pelo professor Fernando Siqueira.*/
select p.nom_prof, d.des_disc
from PROFESSOR p, DISCIPLINA d
where d.mat_prof = p.mat_prof and
	  p.nom_prof like '%Fernando_Siqueira%'
GROUP BY d.des_disc, p.nom_prof;
	  