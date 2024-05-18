-- CRIANDO UMA TABELA (TABLE) -- 
create table if not exists cursos ( -- criando uma table sob a condição da mesma ainda não ter sido criada antes
nome varchar(30) not null unique, -- ~unique garante que todos os valores da coluna ~nome serão distintos uns dos outros e sem duplicação
descricao text,
carga int unsigned, -- ~unsigned garante que os valores serão >=0 (positivos)
totalaulas int unsigned,
ano year default '2024'
)default charset = utf8;

describe cursos; -- desceve as informações sobre a table 

-- ADICIONANDO A PRIMARY KEY APÓS A CRIAÇÃO DA TABLE - caso tenha esquecido de adicionar na criação da table (passo anterior) -

-- > (MODO ANTERIOR) < --
alter table cursos
add column idcursos int first; -- criando a coluna ~idcursos do primary key

alter table cursos 
add primary key (idcursos); -- adicionando

-- > (MODO ATUALIZADO) < --
ALTER TABLE cursos
ADD COLUMN IdCurso INT AUTO_INCREMENT
PRIMARY KEY FIRST;

-- INSERINDO VALORES À TABLE
insert into cursos values 
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de programação','20','15','2014'),
('3','Photoshop','Dicas de photoshop CC','10','8','2014'),
('4','Jarva','Introdução à linguagem java','10','29','2000'),
('5','MySQL','Banco de dados MYSQL','30','15','2016'),
('6','Word','Curso completo de Word','40','30','2016'),
('7','Sapateado','DAnças rítmicas','40','30','2018'),
('8','Cozinha árabe','Aprenda a fazer Kibe','40','30','2018'),
('9','PGP','Curso de PHP para iniciantes','40','20','2010'),
('10','Youtuber','Gerar polêmcia e ganahr inscritos','5','2','2018');

select * from cursos;

-- > LINHA = TUPLAS = REGISTROS < --

-- FAZENDO MODIFICAÇÕES EM LINHAS USANDO O COMANDO ~update
update cursos -- nome da table
set nome = 'HTML5' -- modificação desejada
where idcursos = '1' -- número representante da linha pela chave primária
limit 1; -- limita apenas a uma linha

select * from cursos;

-- > MODIFICAÇÃO 2 <--
update cursos -- nome da table
set nome = 'JAVA', carga = '40', ano = '2015' -- modificação desejada
where idcursos = '4' -- número representante da linha pela chave primária
limit 1; -- limita apenas a uma linha

select * from cursos;

-- > MODIFICAÇÃO 3 <--
update cursos -- nome da table
set nome = 'PHP', ano = '2015' -- modificação desejada
where idcursos = '9' -- número representante da linha pela chave primária
limit 1; -- limita apenas a uma linha

select * from cursos;

-- ***OBS.: É POSSÍVEL FAZER ALTERAÇÕES EM +1 LINHA, MODIFICANDO A ESTRUTURA DO WORKBENCH. PORÉM É PERIGOSO!
-- ***OBS. 2: TENHA UM BACKUP DO SEU BD ATRAVÉS DE UMA CÓPIA

-- EXCLUINDO UMA LINHA USANDO O COMANDO ~delete
delete from cursos
where idcursos = '7';

select * from cursos;

-- ***OBS.: É POSSÍVEL DELETAR +1 LINHA, MODIFICANDO A ESTRUTURA DO WORKBENCH. PORÉM É PERIGOSO!
-- ***OBS. 2: TENHA UM BACKUP DO SEU BD ATRAVÉS DE UMA CÓPIA

-- APAGANDOS TODAS AS LINHAS DE UMA TABELA USANDO O COMANDO ~truncate
truncate cursos; -- ou ~truncate table cursos;

select * from cursos;
-- OBS.: LEMBRE QUE AQUI NÃO EXISTE CTRL + Z. TENHA CUIDADO AO USAR ESSES COMANDOS.

