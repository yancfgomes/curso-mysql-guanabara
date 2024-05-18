-- CRIANDO BANCO DE DADOS (BD) --
CREATE DATABASE formulario 
CHARACTER SET utf8 
COLLATE utf8_general_ci;

-- CRIANDO UMA TABELA (TABLE) -- 
create table email(
nome varchar(30) not null, -- not null: não pode estar vazio
email varchar(30) not null
) default charset=utf8;

-- INSERINDO VALORES NAS TABLES --
insert into email values
('Julian','julian@gmail.com'),
('Mary','mary@outlook.com'),
('John','john@hotmail.com');

-- DESCREVENDO A TABLE (INFORMAÇÕES)
describe email; -- OU desc email

-- > COLUNAS = CAMPOS = ATRIBUTOS < --

-- ADICIONANDO UMA COLUNA
alter table email
add column telefone varchar(10);

-- MODIFICANDO A POSIÇÃO DA COLUNA (~telefone)
alter table email
drop column telefone; -- 1 passo: elimine a coluna que deseja modificar a posição

alter table email
add column telefone varchar(10) default '092' after nome; -- 2 passo:  adicione a coluna aonde deseja

-- exemplo 2 com uma coluna por primeiro
alter table email
add column codigo varchar(10) default '' first;

-- MODIFICANDO CONSTRAINTS E TIPOS PRIMITIVOS USANDO O COMANDO ~modify
alter table email
modify column codigo varchar(15);

-- renomeando os campos usando o comando ~change
alter table email
change column email e_mail varchar(30);

-- RENOMEANDO A TABLE COM O COMANDO ~rename
alter table email
rename to contato;

-- EXCLUINDO A TABLE COM O COMANDO ~drop
drop table if exists contato;

select * from contato;



