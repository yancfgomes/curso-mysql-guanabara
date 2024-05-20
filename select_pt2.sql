-- *** COMANDO SELECT *** --

-- > FILTRANDO POR LINHAS < --

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

-- exemplo 1: selecionando todos os países sem repetir
select distinct nacionalidade from gafanhotos order by nacionalidade;

-- exemplo 2: selecionando todas as cargas horárias sem repetir
select distinct carga from cursos order by carga; 

-- FUNÇÕES DE AGREGAÇÃO
-- Funções de agregação são funções que realizam cálculos em um conjunto de valores e retornam um único valor.
-- As funções de agregação mais comuns são: SUM, AVG, MIN, MAX, COUNT

-- COUNT: conta o número de linhas de uma coluna
-- exemplo 1: contando o número de cursos
select count(*) as 'Número de cursos' from cursos; -- < as 'Número de cursos' é opcional >

-- exemplo 2: contando o número de cursos com carga horária maior que 40
select count(*) from cursos where carga > 40;

-- MAX: retorna o maior valor de uma coluna
-- exemplo 1: retornando o maior valor da coluna carga
select max(carga) from cursos;
-- ou:
select nome,max(carga) from cursos;

-- exemplo 2: retornando o maior valor da coluna carga onde o ano é 2016
select max(totaulas) from cursos where ano = '2016';
-- ou:
select nome,max(totaulas) from cursos where ano = '2016';

-- MIN: retorna o menor valor de uma coluna
-- exemplo 1: retornando o menor valor da coluna carga
select nome,min(carga) from cursos;

-- exemplo 2: retornando o menor valor da coluna carga onde o ano é 2016
select nome,min(totaulas) from cursos where ano = '2016';

-- SUM: soma os valores de uma coluna
-- exemplo 1: somando os valores da coluna carga
select sum(carga) from cursos;

-- AVG: calcula a média dos valores de uma coluna
-- exemplo 1: calculando a média do total de aulas
select avg(totaulas) from cursos;
