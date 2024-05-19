-- EXERCÍCIO SELECT

-- 1. LISTA COM O NOME DE TODAS AS MULHERES
SELECT nome FROM GAFANHOTOS WHERE SEXO = 'F'; 

-- 2. DADOS DOS NASCIDOS ENTRE 01/01/2000 - 31/12/2015
select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento; 

-- 3. NOME DE TODOS OS HOMENS PROGRAMADORES 
select nome from gafanhotos where sexo = 'M' and profissao = 'Programador';

-- 4. DADOS: MULHER; BRASILEIRA; NOME INICIADO COM 'J'
select * from gafanhotos where sexo='F' and nacionalidade = 'Brasil' and nome like 'j%';

-- 5. NOME E NACIONALIDADE, NOT LIKE BRASIL, PESO < 100 E TEM SILVA NO NOME 
select nome,nacionalidade from gafanhotos where sexo = 'M' and nacionalidade != 'brasil' and peso < '100' and nome like '%silva%';

-- 6. MAIOR ALTURA DE HOMEM BRASILEIRO
select max(altura) as 'Maior Altura' from gafanhotos where sexo = 'M';

-- 7. MÉDIA DE PESO DOS CADASTRADOS
select avg(peso) as 'MÉDIA DE PESO'from gafanhotos;

-- 8. MENOR PESO: MULHER != BRASIL, ENTRE 1990-01-01 E 2000-12-31
select min(peso) from gafanhotos 
where sexo = 'F' 
and nascimento between '1990-01-01'and '2000-12-31'
and nacionalidade != 'brasil';

-- 9. MULHER MAIOR QUE 1.90 M DE ALTURA
select count(*)as 'Mulheres maiores que 1,90 m'from gafanhotos where altura > '1.9';


