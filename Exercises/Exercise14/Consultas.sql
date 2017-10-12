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
where e.cpf = d.cpf_gerente;

#questao k
#Liste o nome dos empregados que estão lotados no departamento de informática‟ e de sexo feminino

select e.nome 
from empregado e, departamento d
where nome_departamento = 'INFORMATICA' and e.sexo = 'F';

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
#ABAIXO QUESTAO 16

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

select *
from empregado;

