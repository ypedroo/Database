use bd_biblioteca;
insert into autor (autorid,nome,endereco,sexo) values (1,'XICA','RUA A','F');
insert into autor (autorid,nome,endereco,sexo) values (2,'JOSE','AV 2','M');
insert into autor (autorid,nome,endereco,sexo) values (3,'JOAO','AV 3','F');

insert into editora (editoraid, nome, localidade) values (1, 'NOVA','FORTALEZA');
insert into editora (editoraid, nome, localidade) values (2, 'MODERNA','SAO PAULO');
insert into editora (editoraid, nome, localidade) values (3, 'ATLAS','ITAPIPOCA');

insert into livro (isbn, titulo, ano, edicao, editoraid) values (1,'HELENA ','2001/04/07','3a.',2);
insert into livro (isbn, titulo, ano, edicao, editoraid) values (2,'IRACEMA','2001/07/08','6a.',2);
insert into livro (isbn, titulo, ano, edicao, editoraid) values (3,'ATENEU ','2001/06/03','3a.',1);

insert into livro_autor (isbn, autorid) values (1,1);
insert into livro_autor (isbn, autorid) values (1,3);
insert into livro_autor (isbn, autorid) values (2,2);
insert into livro_autor (isbn, autorid) values (3,1);

insert into exemplar (EXEMPLARID, isbn, dataaquisicao) values (1,1,'2001/04/06')
insert into exemplar (exemplarid, isbn, dataaquisicao) values (2,1,'2001/04/08')
insert into exemplar (exemplarid, isbn, dataaquisicao) values (3,2,'2001/04/07')
insert into exemplar (exemplarid, isbn, dataaquisicao) values (4,2,'2001/07/08')
insert into exemplar (exemplarid, isbn, dataaquisicao) values (5,3,'2001/06/08')
insert into exemplar (exemplarid, isbn, dataaquisicao) values (6,3,'2001/06/03')


