use bd_empresa_basico;
SET SQL_SAFE_UPDATES = 0;

select * from projeto;

select cpf, nome from empregado where sexo = 'F';


select * from empregado where data_nascimento > 1980;
            

select nome, data_nascimento, sal_emp from empregado where sal_emp > 3.500;


select nome, endereco from empregado where sal_emp < 1000 and sexo = 'M';


select nome_dependente from dependente where sexo = 'M' and parentesco = 'CUNHADO';


update dependente set parentesco  = 'FILHO' where parentesco = 'ENTEADO';

select parentesco from dependente;


update empregado set sal_emp = sal_emp+500 where sal_emp < 1000 and sexo = 'F';

select sal_emp from empregado where sexo = 'F';


update projeto set localizacao = 'ITAPIPOCA' where depto_controlador = '1' and localizacao = 'FORTALEZA';

select * from projeto;
