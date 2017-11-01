use bd_empresa_basico;
SET SQL_SAFE_UPDATES = 0;
#a questão
select * from projeto;

#b questão 
select cpf, nome from empregado where sexo = 'F';

#c questão
select * from empregado where data_nascimento > 1980;
            
#questão d
select nome, data_nascimento, sal_emp from empregado where sal_emp > 3.500;

#questão e
select nome, endereco from empregado where sal_emp < 1000 and sexo = 'M';

#questão f 
select nome_dependente from dependente where sexo = 'M' and parentesco = 'CUNHADO';

#questão g
update dependente set parentesco  = 'FILHO' where parentesco = 'ENTEADO';

select parentesco from dependente;

#questão h
update empregado set sal_emp = sal_emp + 500 where sal_emp < 1000 and sexo = 'F';

select sal_emp from empregado where sexo = 'F';

#questao i
update projeto set localizacao = 'ITAPIPOCA' where depto_controlador = '1' and localizacao = 'FORTALEZA';

select * from projeto;

#questao j
#Liste o CPF, nome do empregado, salário e nome do departamento em que está lotado.

select e.cpf, e.nome, e.sal_emp, d.nome_departamento 
from empregado e, departamento d
where e.lotacao = d.numero_departamento;

#questao k
#Liste o nome dos empregados que estão lotados no departamento de informática‟ e de sexo feminino

select e.nome 
from empregado e, departamento d
where
e.lotacao = d.numero_departamento and 
nome_departamento = 'INFORMATICA' and 
e.sexo = 'F';

#questao l
#Liste o CPF e nome dos empregados que são gerentes e nome do departamento que gerencia.

select e.cpf, e.nome, d.nome_departamento
from empregado e, departamento d
where e.cpf = d.cpf_gerente;

select * from departamento;

#questao m
#Liste nome do departamento e os projetos que controla, indicando nome e localização

select d.nome_departamento, p.nome_projeto, p.localizacao
from departamento d, projeto p
where d.numero_departamento = p.depto_controlador;

#questao n
#Liste Liste o nome dos empregados, a descrição dos projetos que eles estão alocados, e o nome do departamento controlador do respectivo projeto.
select e.nome, p.nome_projeto, d.nome_departamento
from empregado e, departamento d, projeto p, empregado_projeto ep
where e.cpf = ep.cpf_empregado and ep.numero_projeto = p.numero_projeto and p.depto_controlador = d.numero_departamento;

#ACIMA ITENS DA QUESTAO 14-15
#ABAIXO QUESTAO 17

#ITEM A
select min(sal_emp) as minimo, max(sal_emp) as maximo, avg(sal_emp) as media 
from empregado;

#ITEM B
select count(numero_projeto) as quantidade_de_projetos 
from projeto;

#ITEM C
#listequem é o empregado do departamento informática que possui o maior salário.
select e.nome from empregado e, departamento d 
where sal_emp = (select max(sal_emp) 
from empregado) and d.nome_departamento like '%_nform_tica%';

#ITEM D
/*Liste o total de dependentes que os empregados de sexo feminino possuem.*/
select count(cod_dependente) 
from empregado e, dependente dp 
where e.sexo = 'F';

#ITEM E
#Liste a quantidade de empregados que o gerente do departamento de informática gerencia
select count(distinct nome) 
from empregado e, departamento d
where (select cpf from empregado e, departamento d where e.cpf = d.cpf_gerente and nome_departamento like '%inform_tica%')
and lotacao = 1;
 
select * from departamento;

/*ITEM F
Liste a quantidade de empregados que não possui cadastrada a data de nascimento.*/
select count(data_nascimento) as Quem_nao_cadastrado
from empregado
where data_nascimento = null;

/*ITEM G 
Liste o total dos salários dos empregados da família Silva.*/
select sum(sal_emp) as total_salario
from empregado
where nome like '%Silva%';

-- Questão 20
/* ITEM A 
Liste a quantidade de projetos que cada empregado está alocado.*/

select e.nome, isnull(count(ep.numero_projeto))as qtd_proj
from empregado e
		left join empregado_projeto ep 
			on e.cpf = ep.cpf_empregado
group by e.nome
ORDER BY e.nome;

/*ITEM B
Liste a quantidade de empregados que cada projeto tem alocado.*/
select p.nome_projeto,count(p.numero_projeto) as qtd_empregados
from projeto p
		left join empregado_projeto ep
        on ep.numero_projeto = p.numero_projeto
group by p.nome_projeto;

/*ITEM C
Liste a quantidade de empregado por sexo que cada departamento possui.*/

select e.sexo, dp.nome_departamento, count(e.cpf) as qtd
from empregado e 
		right join departamento dp 
        on dp.numero_departamento = e.lotacao
group by e.sexo, dp.nome_departamento
order by dp.nome_departamento;
 /*ITEM D
  Liste o nome do empregado e a quantidade de dependentes daqueles que possui um número de
dependentes superior a 3.*/
select e.nome, count(de.cpf_empregado) as qtd_dependente
from empregado e 
	left join dependente de
		on de.cpf_empregado = e.cpf
group by e.nome
having count(de.cpf_empregado)>3
order by e.nome;

/* Item E
Liste o nome do departamento e a quantidade de projetos que possui cada departamento*/
select d.nome_departamento, count(p.numero_projeto) as qtd_projetos
from departamento d
		left join projeto p
			on d.numero_departamento = p.depto_controlador
group by d.nome_departamento
order by d.nome_departamento asc;

/* ITEM F
Liste o total de salários pagos por departamento*/
SELECT d.nome_departamento, sum(e.sal_emp) as total
FROM departamento d
		left join empregado e
			on d.numero_departamento = e.lotacao
group by d.nome_departamento
order by d.nome_departamento;

/* ITEM G
) Liste os departamentos cujos totais de salários pagos são maiores que R$ 6000,00*/
SELECT d.nome_departamento, sum(e.sal_emp) as total
FROM departamento d
		left join empregado e
			on d.numero_departamento = e.lotacao
group by d.nome_departamento
having sum(e.sal_emp)>6000
order by d.nome_departamento;

/*ITEM H
Liste a média salarial dos empregados do sexo masculino de cada departamento*/
SELECT d.nome_departamento, avg(e.sal_emp) as qtd_que_macho_ganha
FROM departamento d
		LEFT JOIN empregado e
			on d.numero_departamento = e.lotacao
where e.sexo = 'M'
GROUP BY d.nome_departamento
ORDER BY d.nome_departamento desc;

/*ITEM I
Liste o nome do departamento e quantidade de empregados que possui, considerando apenas
aqueles departamentos que possui a média salarial maior que a média salarial da empresa.*/
select d.nome_departamento, count(e.cpf) as qtd_emp
from departamento d
		left join empregado e
			on e.lotacao = d.numero_departamento
group by d.nome_departamento
having avg(e.sal_emp) > (select avg(sal_emp) from empregado)
order by d.nome_departamento;

/* ITEM J
Liste o nome dos empregados do sexo masculino que possuem dependentes e que seu salário é
maior que a média salarial de algum departamento.*/
select e.nome, e.sal_emp
from empregado e
where e.sexo = 'M'
and sal_emp >= /*some*/ (select avg(sal_emp) from empregado group by e.nome)
and exists (select * from dependente de where e.cpf = de.cpf_empregado);

/* ITEM K
Liste o nome do departamento que possui empregados que não estão alocados em projetos.*/
SELECT d.nome_departamento
FROM departamento d
WHERE exists (select * from empregado e
		       where e.lotacao = d.numero_departamento
               and not exists(select * from empregado_projeto ep
								where ep.cpf_empregado = e.cpf)
                                );

