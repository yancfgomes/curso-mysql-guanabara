use cadastro;
describe gafanhotos;

alter table gafanhotos add cursopreferido int; -- Adiciona a coluna cursopreferido 

-- ADICIONANDO UMA CHAVE ESTRANGEIRA (FOREIGN KEY)
alter table gafanhotos 
add foreign key (cursopreferido) 
references cursos(idcurso); -- MUL significa que a chave estrangeira é múltipla

select * from gafanhotos;
select * from cursos;

-- FORMA MANUAL DE ATUALIZAR A CHAVE ESTRANGEIRA COM A TABLE GAFANHOTOS
update gafanhotos set cursopreferido = '6' where id = '1'; 

--  FEITO DE FORMA AUTOMATIZADA PELO WORKBENCH
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '15' WHERE (`id` = '2');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '10' WHERE (`id` = '3');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '2' WHERE (`id` = '4');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '7' WHERE (`id` = '5');
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido` = '9' WHERE (`id` = '6');

-- INTEGRIDADE REFERENCIAL: NÃO PERMITE DELETAR UM REGISTRO DA TABELA CURSOS QUE ESTÁ SENDO REFERENCIADO NA TABELA GAFANHOTOS
-- EX:
delete from cursos where idcurso = 1; -- Não permite deletar pois está sendo referenciado na tabela gafanhotos

-- USANDO COMANDO JOIN PARA TRAZER OS DADOS DAS DUAS TABELAS
-- sempre que usar o join, é necessário usar o ON para fazer a ligação entre as tabelas
-- inner join: traz somente os registros que tem correspondência nas duas tabelas
select gafanhotos.nome, cursos.nome, cursos.ano 
from gafanhotos inner join cursos 
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome; 

-- outra forma de escrever o código:
select g.nome, c.nome, c.ano 
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome; 

-- left join: traz todos os registros da tabela da esquerda (gafanhotos) e os registros correspondentes da tabela da direita (cursos)

select g.nome, c.nome, c.ano 
from gafanhotos as g left join cursos as c
on c.idcurso = g.cursopreferido; 

-- ou, adicionando 'outer':

select g.nome, c.nome, c.ano 
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido; 

-- right join: traz todos os registros da tabela da direita (cursos) e os registros correspondentes da tabela da esquerda (gafanhotos)
select g.nome, c.nome, c.ano 
from gafanhotos as g right join cursos as c
on c.idcurso = g.cursopreferido; 




