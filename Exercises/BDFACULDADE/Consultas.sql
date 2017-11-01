use bd_Faculdade_1
set SQL_SAFE_UPDATES = 0;

#ITEM A
select des_disc, dp.nome_departamento
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
Encontre os alunos que cursam disciplinas da área Ciências Tecnológicas.*/
select a.nom_aluno
from ALUNO a, ALUNODISCIPLINA ad, Disciplina D, Departamento dp, Area ar
where a.mat_aluno = ad.mat_aluno and ad.cod_disc = d.cod_disc and d.cod_depto = dp.cod_depto and
dp.cod_area = ar.cod_area
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
	  p.nom_prof like '%Fernando_%'
GROUP BY d.des_disc, p.nom_prof;
/*ITEM E
Encontre os alunos que cursam disciplinas da área Humanas. */
SELECT A.NOM_ALUNO
FROM ALUNO A, ALUNODISCIPLINA AD, DISCIPLINA DI, DEPARTAMENTO D, AREA AR
WHERE A.MAT_ALUNO = AD.MAT_ALUNO AND
 AD.COD_DISC = DI.COD_DISC AND
 DI.COD_DEPTO = D.COD_DEPTO AND
 D.COD_AREA = AR.COD_AREA AND
 AR.NOM_AREA = 'HUMANAS';
 
 /*ITEM F
 Listar a quantidade de alunos por sexo*/
 select a.tip_sexo, count(*)
 from ALUNO a
 group by a.tip_sexo;
 
 /*ITEM G 
 Listar a quantidade de disciplinas que um professor ministra*/
 select p.nom_prof, count(*) qtd_disciplina
 from PROFESSOR p, DISCIPLINA d
 where p.mat_prof = d.mat_prof
 group by p.nom_prof;
 
 /*ITEM H
 Listar as disciplinas que possuem mais de 4 alunos matriculados*/
 select d.des_disc, count(*) QTD_ALUNOS
 from DISCIPLINA d, ALUNO a, ALUNODISCIPLINA ad
 where a.mat_aluno = ad.mat_aluno and
	   ad.cod_disc = d.cod_disc
group by d.des_disc
having count(*)> 4;