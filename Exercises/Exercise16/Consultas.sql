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
Encontre os alunos que cursam disciplinas da área Ciências Tecnológicas. */
select a.nom_aluno
from ALUNO a inner join (select ad.mat_aluno from ALUNODISCIPLINA ad, DISCIPLINA d) as ad
on a.mat_aluno = ad.mat_aluno,
(select d.cod_disc from DISCIPLINA d inner join (select dp.cod_depto from DEPARTAMENTO dp, AREA ar where nom_area like '%_TECNOLOGICAS%')as dpa
on d.cod_depto = dpa.cod_depto) f
;
