-- *** COMANDO SELECT *** --

-- > SELECIONANDO FILTRANDO POR COLUNAS < --

use cadastro; -- seleciona o banco de dados 

-- MOSTRANDO TODAS AS COLUNAS DA TABELA <curso>
select * from cursos; 

-- MOSTRANDO TODAS AS COLUNAS DA TABELA <CURSO> PELA ORDEM DO CAMPO <NOME>
select * from cursos
order by nome; -- ou ~order by nome asc;

-- MOSTRA A TABLE <CURSO> PELA ORDEM DO CAMPO <NOME> DE FORMA INVERSA
select * from cursos
order by nome desc; 

-- MOSTRANDO APENAS AS COLUNAS CITADAS <NOME,CARGA,ANO> DA TABELA E ORDENANDO PELOS CAMPOS <ANO,NOME>
select ano,nome,carga from cursos
order by ano,nome;

-- > SELECIONANDO LINHAS < --

select * from cursos
where ano ='2016' -- operadores relacionais: = / > / < / >= / <= / != ou <> / between <valor1> and <valor2> / in (<valor1>,<valor2>,<valor3>) / and / or
order by nome;



