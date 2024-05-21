-- EXERCICIO 2
USE cadastro;
-- 1. PROFISSÕES DOS GAFANHOTOS E RESPECTIVOS QUANTITATIVOS
select profissao, count(*) from gafanhotos group by profissao;

-- 2. QUANTOS HOMENS E MULHERES NASCERAM APÓS 01/01/2005
select sexo, count(*) from gafanhotos 
where nascimento > '2005-01-01' 
group by sexo; 

