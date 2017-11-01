-- Questão 19
/* ITEM A
Exibir o nome dos proprietários que não tem nenhuma infração*/
use bd_infracoes;
SET SQL_SAFE_UPDATES = 0;

select p.nome 
from proprietario p
where not exists (select * from veiculo v,infracoes i where v.placa = i.placa_veiculo)
group by p.nome;

/*ITEM B
Exibir o valor médio das infrações registradas, por data, cujo valor médio de infração seja maior
R$200,00.*/

SELECT data_hora,valor_infra
FROM infracoes
#where data_hora is not null
group by data_hora, valor_infra
having AVG(valor_infra) > 200
;

/*Item c
Exibir a quantidade de veículos por classe e em ordem alfabética.*/
select modelo,count(classe)
from veiculo
GROUP BY modelo
ORDER BY modelo asc
;

/* item D
Exibir o nome dos proprietários que possuem mais de dois veículos*/
select p.nome
from proprietario p, veiculo v
where p.codigo = v.cod_proprietario
group by p.nome
having count(*)>=2;

/*ITEM E
Listar os tipos de infrações que não possuem nenhuma autuação (utilize join)
nao entendi o enunciado >-<*/
select i.id_infracao
from infracoes i 
where not exists (SELECT* from infracoes i2 inner join tipoinfracao ti on i.id_infracao = id_tipo);

/*ITEM F 
Liste os modelos de carro que possuem valor total de infração maior que a média de todos os
modelos*/
SELECT v.modelo
from veiculos v, infracoes i
where v.placa = i.placa_veiculo and
i.valor_infra > (select avg(valor_infra) from veiculos v1, infracoes i2); 



select p.nome
from proprietario p left join veiculo v on p.codigo = v.cod_proprietario
where v.cod_proprietario is null;

SELECT P. NOME
FROM proprietario P
WHERE NOT EXISTS (SELECT V.COD_PROPRIETARIO
FROM veiculo V
WHERE P.CODIGO = V.COD_PROPRIETARIO);

/*SImulado
ITEM A
Exibir a placa dos veículos que tenham „azul‟ em qualquer parte do nome da cor*/
SELECT placa
FROM veiculo
where cor like '%azul%';

/*Exibir a placa, cor e ano de fabricação dos veículos pertencentes a „Fernando Siqueira‟*/
SELECT v.placa, v.cor, v.ano_fabric
from veiculo v, proprietario p
where v.cod_proprietario = p.codigo
and p.nome like '%Siqueira%';

select v.placa, v.cor, v.ano_fabric
from veiculo v inner join
		proprietario p
        on v.cod_proprietario = p.codigo
where p.nome like '%Siqueira';

/*Exibir os veículos que não têm infração (apresente uma solução com IN, outra com EXISTS e
outra com OUTER JOIN).*/
select v.placa
from veiculo v, infracoes i
where v.placa not in(select v2.placa from veiculo v2, infracoes i2 where v2.placa = i2.placa_veiculo);

select v.placa
from veiculo v, infracoes i
where not exists (select * from veiculo v1, infracoes i where v.placa = i.placa_veiculo);

/*select v.placa
from veiculo v full outer join
infracoes i
where i.id_infracao is null;*/

/*Exibir a quantidade e valor total de infrações de cada veículo*/
select v.modelo, count(*) as qtd, sum(i.valor_infra) as total
from veiculo v
	inner join infracoes i
    on v.placa = i.placa_veiculo
group by v.modelo;

/* Escrever uma cláusula que inclua o atributo chassi, caractere de 15 posições na tabela veículo.*/
alter table veiculo add chassi varchar(15);
/*Escrever uma cláusula que indique que o atributo chassi será chave candidata.*/
alter table veiculo add constraint uk_chassi unique(chassi);
/*) Definir uma restrição sobre a tabela tiposinfracao que garanta a todos os tipos de infrações um
valor mínimo de R$ 150,00*/
ALTER table tipoinfracao add CONSTRAINT val_min_infra check(valor> 150.00);
/*Escrever uma cláusula SQL para excluir todos os proprietários cuja renda mensal seja inferior
ao valor do maior tipo de infração cadastrada no banco de dados.*/
delete from proprietario
where renda_mensal < (SELECT max(valor) from tipoinfracao);
/*) Escrever uma cláusula SQL para alterar a cor dos veículos de „Azul‟ para „Cinza‟ cujo ano de
fabricação seja os 03 últimos anos anteriores a 2006. */
update veiculo set cor = 'CINZA' WHERE cor = 'azul' and (ano_fabric < 2006 and ano_fabric > 2006-3);

/*Escrever as cláusulas SQL‟s necessárias para permitir a inclusão da infração abaixo (dica:
utilize o também o comando SQL para descobrir os valores das chaves envolvidas nessa
operação de inclusão)*/
select * from proprietario; -- sica cod_1
select * from veiculo;  -- veicu 1
select * from infracoes; -- 
select * from tipoinfracao; -- execesso 3 -- valor 570
 
UPDATE tipoinfracao set valor = 570.00 where ds_tipo = 'EXCESSO DE VELOCIDADE';
insert into infracoes(id_infracao, local, data_hora, placa_veiculo, cod_infra)
values (15,'FORTALEZA','2007/07/13',1,3);
update infracoes set valor_infra = 570 where cod_infra = 3;

select i.id_infracao, t.ds_tipo, p.nome, i.valor_infra
from infracoes i, tipoinfracao t, veiculo v, proprietario p
where p.codigo = v.cod_proprietario and v.placa = i.placa_veiculo
		and i.cod_infra = t.id_tipo;
        

/*Exibir os veículos que possuem valor total de infração maior que a média dos veículos do seu
modelo.*/
select v.placa,v.modelo, count(*) as qtd, sum(valor_infra) as total
from veiculo v inner join infracoes i
		on v.placa = i.placa_veiculo
group by v.placa, v.modelo
having sum(i.valor_infra) > (select avg(valor_infra) from veiculo v2 inner join infracoes i2 on 
														v2.placa = i2.placa_veiculo
                                                        group by v2.placa);


/*Consultas referentes a questao 2*/
SELECT c.ds_classe, sum(i.valor_infra)
from classe c, veiculo v, infracoes i
WHERE c.id_classe = v.classe and i.placa_veiculo = v.placa
group by c.ds_classe;

select c.ds_classe, sum(i.valor_infra) as total_infracoes
from veiculo v inner join infracoes i
		on v.placa = i.placa_veiculo
			    right join classe c
				on c.id_classe = v.classe
group by c.ds_classe;

-- pnome vp vanofabri vmodelo total infra
select p.nome, v.placa, v.ano_fabric, v.modelo, sum(i.valor_infra) as total_infra
from proprietario p left join veiculo v
				on p.codigo = v.cod_proprietario
					left join infracoes i
						on v.placa = i.placa_veiculo
where p.sexo = 'M'
group by p.nome, v.placa, v.ano_fabric, v.modelo;




