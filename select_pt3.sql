 -- *** COMANDO SELECT *** --

-- > AGRUPAMENTO < --
-- Agrupamento é utilizado para agrupar linhas que possuem o mesmo valor em uma ou mais colunas.
use cadastro;

-- Exemplo 1: Agrupamento de cursos por totaulas
select totaulas, count(*) from cursos group by totaulas order by totaulas;

-- Exemplo 2: Agrupamento de cursos por totaulas e ordenação por quantidade de cursos
select totaulas, count(*) from cursos group by totaulas order by count(*);

-- Exemplo 3: Agrupamento de cursos por totaulas e ordenação por quantidade de cursos de forma decrescente
select totaulas, count(*) from cursos group by totaulas order by count(*) desc;

-- UTILIZANDO COMANDO HAVING --
-- O comando HAVING é utilizado para filtrar os resultados de um agrupamento.
-- OBS.: O having filtra os resultados de um agrupamento e não de uma consulta de outro parâmetro.

-- Exemplo 4: Agrupamento de cursos por totaulas e filtrando cursos com mais de 1 curso
select totaulas, count(*) from cursos group by totaulas having count(*) > 1 ;

-- Exemplo 5: Agrupamento de cursos por totaulas e filtrando cursos com mais de 1 curso e ordenando por quantidade de cursos
select ano, count(*) from cursos group by ano having count(ano) >= 5 order by count(*) desc;

-- Exemplo 6: Agrupamento de cursos por carga e filtrando cursos com carga maior que a média de carga dos cursos com ano maior que 2015
select carga, count(*) from cursos
where ano >2015
group by carga
having carga > (select avg(carga) from cursos);  
