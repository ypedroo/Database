-- 2 27
use bd_vendas;
set sql_safe_updates=0;
-- temp
create table tb_resumo_vendas(
ano int,
mes int,
matr int not null,
vl_vendas float,
qt_vendas int,
constraint primary key pk_venda(matr)

);

-- ex27 q2
delimiter //
create procedure resumo(in ano int, mes int)

begin
declare valorvenda float;
declare qtvenda int;

	set valorvenda = (select sum(h.qt_vendida) 
		from vendedor v left join historico_vendas h
			on v.id_vendedor = h.id_vendedor);
    
	set qtvenda = (select count(*) 
		from vendedor v left join historico_vendas h
			on v.id_vendedor = h.id_vendedor);


if valorvenda and qtvenda = 0 then insert into tb_resumo_vendas(ano, mes, matr, vl_vendas, qt_vendas) 
values(ano, mes, matr, 0, 0);
    end if;
    
if exists (select ano, mes from tb_resumo_vendas t
where t.ano = ano and t.mes = mes)then
insert into tb_resumo_vendas(ano, mes, matr, vl_vendas, qt_vendas) values(ano, mes, matr, valorvenda, qtvenda);
end if;

insert into tb_resumo_vendas(ano, mes, matr, vl_vendas, qt_vendas) values(ano, mes, matr, valorvenda, qtvenda);

end //
delimiter ;
