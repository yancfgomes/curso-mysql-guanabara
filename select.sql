-- *** COMANDO SELECT *** --

-- > SELECIONANDO COLUNAS < --

use cadastro; -- seleciona o banco de dados 

select * from cursos; -- mostra a table <cursos>

select * from cursos
order by nome; -- mostra a table <cursos> pela ordem do campo <nome> 

select * from cursos
order by nome desc; -- mostra a table <cursos> pela ordem do campo <nome> de forma INVERSA