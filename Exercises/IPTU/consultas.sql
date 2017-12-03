use bd_iptu;
-- ITEM A
create view imovel_info1 as
select i.inscricao, b.localizacao, i.valor, p.nome, sum(pa.valor) as valor_de_parcela
	from proprietario p inner join imovel_proprietario pi
			on p.cpf = pi.proprietario_cpf
		inner join imovel i
			on pi.imovel_inscricao= i.inscricao
		inner join bairro b
			on i.bairro_id = b.id
	    inner join iptu ip
			on ip.imovel_inscricao = i.inscricao
            inner join parcela pa
				on ip.parcela_id = pa.id
group by i.inscricao, b.localizacao, i.valor, p.nome;

select * from imovel_info1;
