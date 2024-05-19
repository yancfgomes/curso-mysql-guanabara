-- *** COMANDO SELECT *** --

-- > SELECIONANDO FILTRANDO POR LINHAS < --

use cadastro; -- seleciona o banco de dados

-- SELECIONANDO POR NOME 
select * from cursos
where nome = 'PHP';

-- SELECIONANDO UTILIZANDO O COMANDO LIKE
-- % significa alguma coisa (letra,número) antes ou depois da letra. Pode ser qualquer coisa, inclusive nada.
-- _ significa uma letra, número, espaço. Tem que ter algo no lugar do underline.

-- exemplo 1: selecionando todos os cursos que começam com a letra "P" 
select * from cursos
where nome like 'P%'; -- a letra P pode ser minúscula ou maiúscula

-- exemplo 2: selecionando todos os cursos que terminam com a letra "a"
select * from cursos
where nome like '%a'; 

-- exemplo 3: selecionando todos os cursos que contém a letra "a" em qualquer posição
select * from cursos
where nome like '%a%'; 

-- exemplo 4: selecionando todos os cursos que não contém a letra "a" em qualquer posição
select * from cursos
where nome not like '%a%'; 

-- exemplo 5: selecionando todos os cursos que começam com as letras "PH" e terminam com a letra "P"
select * from cursos
where nome like 'ph%p'; 

-- exemplo 6: selecionando todos os cursos que começam com as letras "PH" e terminam com a letra "P" seguido de algo
select * from cursos
where nome like 'ph%p_'; 

-- exemplo 7: usando o underline "_" 
select * from cursos
where nome like 'p__t%'; 

-- SELECIONANDO UTILIZANDO O COMANDO DISTINCT
-- DISTINCT: mostra apenas valores diferentes, ou seja, não repete valores iguais
-- Distinct é útil para mostrar valores únicos de uma coluna

-- exemplo 1: selecionando todos os cursos sem repetir
select distinct nacionalidade from gafanhotos;