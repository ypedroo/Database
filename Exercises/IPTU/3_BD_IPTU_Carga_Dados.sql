use bd_iptu;

insert into proprietario (cpf,nome,endereco,sexo) values ( 1,'FERNANDO SOARES DE SIQUEIRA','RUA A','M');
insert into proprietario (cpf,nome,endereco,sexo) values ( 2,'ANA FLAVIA MARINHO DE LIMA','AV 2','F');
insert into proprietario (cpf,nome,endereco,sexo) values ( 3,'ANDRE BARROS PEREIRA','AV 3','M');
insert into proprietario (cpf,nome,endereco,sexo) values ( 4,'ANTONIO LUIZ DE OLIVEIRA BARRETO','AV 1','M');
insert into proprietario (cpf,nome,endereco,sexo) values ( 5,'ATSLANDS REGO DA ROCHA','AV 4','M');
insert into proprietario (cpf,nome,endereco,sexo) values ( 6,'CARLOS ARTUR SOBREIRA ROCHA','AV 5','M');
insert into proprietario (cpf,nome,endereco,sexo) values ( 7,'ELIESER SALES PEREIRA','AV 6','M');
insert into proprietario (cpf,nome,endereco,sexo) values ( 8,'EMANUELE MARQUES','AV 7','F');
insert into proprietario (cpf,nome,endereco,sexo) values ( 9,'ERICA ATEM GONCALVES DE ARAUJO COSTA','AV 8','M');


insert into fiscal (matricula,nome,endereco,sexo) values (1,'FRANCISCO ALBERTO OLIVEIRA','AV 1','M');
insert into fiscal (matricula,nome,endereco,sexo) values (2,'GERARDO VALDISIO VIANA','AV 10','M');
insert into fiscal (matricula,nome,endereco,sexo) values (3,'JOSE LASSANCE DE CASTRO SILVA','AV 1','M');
insert into fiscal (matricula,nome,endereco,sexo) values (4,'JOSE LEUDO MAIA','AV 11','M');
insert into fiscal (matricula,nome,endereco,sexo) values (5,'JOSE LUIZ SOUSA LIMA','AV 12','M');
insert into fiscal (matricula,nome,endereco,sexo) values (6,'MAGDA ROCHA PAMPLONA','AV 13','F');
insert into fiscal (matricula,nome,endereco,sexo) values (7,'MARCUS RODRIGUES','AV 14','M');
insert into fiscal (matricula,nome,endereco,sexo) values (8,'MARIA ENEIDE LIMA ARAUJO','AV 15','F');
insert into fiscal (matricula,nome,endereco,sexo) values (9,'MATEUS MOSCA VIANA','AV 16','M');
insert into fiscal (matricula,nome,endereco,sexo) values (10,'PAULO CESAR DE ALMEIDA','AV 17','M');

insert into bairro (id, localizacao, representante) values (1,'ALDEOTA', 'JOAO DAS ALDEIAS');
insert into bairro (id, localizacao, representante) values (2,'CENTRO', 'MARIA FERRIRA');
insert into bairro (id, localizacao, representante) values (3,'ALTO DO BODE', 'ZE FODAO');
insert into bairro (id, localizacao, representante) values (4,'BURACO DA JIA', 'XICO TUITA');

insert into tipo_imovel (id,descricao) values (1, 'TERRENO');
insert into tipo_imovel (id,descricao) values (2, 'PREDIAL');

insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	1	,	'RUA A'	,	100	,	10000	,	2	,	2	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	2	,	'AV 2'	,	200	,	10000	,	2	,	2	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	3	,	'AV 3'	,	300	,	10000	,	2	,	1	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	4	,	'AV 1'	,	400	,	10000	,	2	,	1	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	5	,	'AV 4'	,	500	,	10000	,	1	,	1	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	6	,	'AV 5'	,	600	,	10000	,	1	,	2	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	7	,	'AV 6'	,	700	,	10000	,	1	,	2	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	8	,	'AV 7'	,	800	,	150000	,	1	,	2	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	9	,	'AV 8'	,	900	,	150000	,	3	,	1	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	10,	'AV 9'	,	1000	,	150000	,	3	,	1	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	11,	'AV 1'	,	1100	,	150000	,	3	,	2	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	12,	'AV 10'	,	1200	,	150000	,	2	,	2	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	13,	'AV 1'	,	1300	,	150000	,	2	,	1	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	14,	'AV 11'	,	1400	,	200000	,	2	,	2	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	15,	'AV 12'	,	1500	,	200000	,	2	,	1	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	16,	'AV 13'	,	1600	,	200000	,	1	,	2	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	17,	'AV 14'	,	1700	,	200000	,	1	,	1	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	18,	'AV 15'	,	1800	,	50000	,	1	,	1	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	19,	'AV 16'	,	1900	,	50000	,	4	,	1	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	20,	'AV 17'	,	2000	,	50000	,	4	,	2	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	21,	'AV 18'	,	2100	,	50000	,	4	,	2	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	22,	'AV 19'	,	2200	,	50000	,	4	,	2	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	23,	'AV 20'	,	2300	,	30000	,	4	,	1	);
insert into imovel (inscricao, endereco, area, valor, Bairro_id, tipo_imovel_id) values (	24,	'AV 21' ,	2400	,	30000	,	4	,	1	);

insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	1	,	1	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	2	,	2	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	3	,	3	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	4	,	4	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	5	,	5	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	6	,	6	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	7	,	7	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	8	,	8	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	9	,	9	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	10	,	1	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	11	,	1	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	12	,	1	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	13	,	4	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	14	,	4	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	15	,	2	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	16	,	3	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	17	,	4	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	18	,	5	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	19	,	1	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	20	,	1	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	21	,	1	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	22	,	1	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	23	,	1	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	24	,	1	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	1	,	2	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	6	,	3	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	13	,	1	);
insert into imovel_proprietario (imovel_inscricao, proprietario_cpf) values (	19	,	5	);

insert into parcela (id, valor, valor_desconto) values (	1	,	1200	,	200	);
insert into parcela (id, valor, valor_desconto) values (	2	,	1300	,	300	);
insert into parcela (id, valor, valor_desconto) values (	3	,	1400	,	400	);
insert into parcela (id, valor, valor_desconto) values (	4	,	1500	,	500	);
insert into parcela (id, valor, valor_desconto) values (	5	,	1600	,	600	);

insert into iptu(imovel_inscricao, parcela_id) values (	1	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	2	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	3	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	4	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	5	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	6	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	7	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	8	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	9	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	10	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	11	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	12	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	13	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	14	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	15	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	16	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	17	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	18	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	19	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	20	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	21	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	22	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	23	,	1	);
insert into iptu(imovel_inscricao, parcela_id) values (	24	,	1	);
				
insert into iptu(imovel_inscricao, parcela_id) values (	1	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	2	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	3	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	4	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	5	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	6	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	7	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	8	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	9	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	10	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	11	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	12	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	13	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	14	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	15	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	16	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	17	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	18	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	19	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	20	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	21	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	22	,	2	);
insert into iptu(imovel_inscricao, parcela_id) values (	23	,	2	);

insert into iptu(imovel_inscricao, parcela_id) values (	1	,	3	);
insert into iptu(imovel_inscricao, parcela_id) values (	2	,	3	);
insert into iptu(imovel_inscricao, parcela_id) values (	3	,	3	);
insert into iptu(imovel_inscricao, parcela_id) values (	4	,	3	);
insert into iptu(imovel_inscricao, parcela_id) values (	5	,	3	);
insert into iptu(imovel_inscricao, parcela_id) values (	6	,	3	);
insert into iptu(imovel_inscricao, parcela_id) values (	7	,	3	);
insert into iptu(imovel_inscricao, parcela_id) values (	8	,	3	);
insert into iptu(imovel_inscricao, parcela_id) values (	9	,	3	);
insert into iptu(imovel_inscricao, parcela_id) values (	10	,	3	);
				
				
insert into iptu(imovel_inscricao, parcela_id) values (	6	,	4	);
insert into iptu(imovel_inscricao, parcela_id) values (	7	,	4	);
insert into iptu(imovel_inscricao, parcela_id) values (	8	,	4	);
insert into iptu(imovel_inscricao, parcela_id) values (	9	,	4	);
insert into iptu(imovel_inscricao, parcela_id) values (	10	,	4	);


insert into ordem_servico (id, data_inicial, data_final, data_comparecimento, descricao, fiscal_matricula1, fiscal_matricula2,	imovel_inscricao) values (	1	, '2018/11/27','2018/02/05','2018/01/26','AMPLIACAO DA AREA CONSTRUIDA	 ',	1	,	2	,	1	);
insert into ordem_servico (id, data_inicial, data_final, data_comparecimento, descricao, fiscal_matricula1, fiscal_matricula2,	imovel_inscricao) values (	2	, '2018/03/07','2018/05/02','2018/11/03','TESTADA PRINCIPAL INCORRETA	 ',	3	,	4	,	3	);
insert into ordem_servico (id, data_inicial, data_final, data_comparecimento, descricao, fiscal_matricula1, fiscal_matricula2,	imovel_inscricao) values (	3	, '2018/11/30','2018/02/11','2018/10/26','TIPO DE IMOVEL INCORRETO	 ',	5	,	6	,	5	);
insert into ordem_servico (id, data_inicial, data_final, data_comparecimento, descricao, fiscal_matricula1, fiscal_matricula2,	imovel_inscricao) values (	4	, '2018/02/09','2018/02/19','2018/12/26','SEM MURO	 ',	7	,	8	,	7	);
insert into ordem_servico (id, data_inicial, data_final, data_comparecimento, descricao, fiscal_matricula1, fiscal_matricula2,	imovel_inscricao) values (	5	, '2018/11/20','2018/02/20','2018/01/20','TERRENO IRREGULAR	 ',	1	,	2	,	9	);
insert into ordem_servico (id, data_inicial, data_final, data_comparecimento, descricao, fiscal_matricula1, fiscal_matricula2,	imovel_inscricao) values (	6	, '2018/11/01','2018/05/05','2018/01/19','AMPLIACAO DA AREA CONSTRUIDA	 ',	3	,	4	,	11	);
insert into ordem_servico (id, data_inicial, data_final, data_comparecimento, descricao, fiscal_matricula1, fiscal_matricula2,	imovel_inscricao) values (	7	, '2018/11/29','2018/05/15','2018/09/29','TESTADA PRINCIPAL INCORRETA	 ',	5	,	6	,	21	);
insert into ordem_servico (id, data_inicial, data_final, data_comparecimento, descricao, fiscal_matricula1, fiscal_matricula2,	imovel_inscricao) values (	8	, '2018/11/27','2018/12/05','2018/01/19','TIPO DE IMOVEL INCORRETO	 ',	7	,	8	,	22	);
insert into ordem_servico (id, data_inicial, data_final, data_comparecimento, descricao, fiscal_matricula1, fiscal_matricula2,	imovel_inscricao) values (	9	, '2018/11/23','2018/02/15','2018/01/26','SEM MURO	 ',	9	,	10	,	23	);
insert into ordem_servico (id, data_inicial, data_final, data_comparecimento, descricao, fiscal_matricula1, fiscal_matricula2,	imovel_inscricao) values (	10, '2018/11/20','2018/10/05','2018/03/25','TERRENO IRREGULAR	 ',	9	,	10	,	24	);

	