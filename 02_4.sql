--2.4 - Using the DEFINE and VERIFY commands

/*
1 - Define: seta uma variável para toda a seção.
2 - Undefine: tira a variável da seção.
3 - Set verify on: serve para ver a instrução após as variáveis de substituição (Default off)
4 - Set verify off: serve para não mostrar a instrução após as variáveis de substituição (Default)
5 - Set define off: Quando existir variável de substituição, não vai abrir o prompt pedindo o valor
6 - Set define on: Quando existir variável de substituição, vai abrir o prompt pedindo o valor (Default)
*/

--1 - seta uma variavel para toda a seção.
define varid = 1;
select * from funcionario where id = &varid;

--2 - Undefine: tira a variável da seção (vai abrir o prompt novamente).
undefine varid = 1;

--3 - Set verify on: serve para ver a instrução após as variáveis de substituição (Default off)
set verify on;

--4 - Set verify off: serve para não mostrar a instrução após as variáveis de substituição (Default off)
set verify off;

--5 - Set define off: Quando existir variável de substituição, não vai abrir o prompt pedindo o valor e vai ler 
--o &variavel como uma string. 
set define off;

--6 - Set define on: Quando existir variável de substituição, vai abrir o prompt pedindo o valor (Default)
set define on;
