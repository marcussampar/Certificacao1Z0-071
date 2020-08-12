--2.4 - Using the DEFINE and VERIFY commands

/*
1 - Define: seta uma vari�vel para toda a se��o.
2 - Undefine: tira a vari�vel da se��o.
3 - Set verify on: serve para ver a instru��o ap�s as vari�veis de substitui��o (Default off)
4 - Set verify off: serve para n�o mostrar a instru��o ap�s as vari�veis de substitui��o (Default)
5 - Set define off: Quando existir vari�vel de substitui��o, n�o vai abrir o prompt pedindo o valor
6 - Set define on: Quando existir vari�vel de substitui��o, vai abrir o prompt pedindo o valor (Default)
*/

--1 - seta uma variavel para toda a se��o.
define varid = 1;
select * from funcionario where id = &varid;

--2 - Undefine: tira a vari�vel da se��o (vai abrir o prompt novamente).
undefine varid = 1;

--3 - Set verify on: serve para ver a instru��o ap�s as vari�veis de substitui��o (Default off)
set verify on;

--4 - Set verify off: serve para n�o mostrar a instru��o ap�s as vari�veis de substitui��o (Default off)
set verify off;

--5 - Set define off: Quando existir vari�vel de substitui��o, n�o vai abrir o prompt pedindo o valor e vai ler 
--o &variavel como uma string. 
set define off;

--6 - Set define on: Quando existir vari�vel de substitui��o, vai abrir o prompt pedindo o valor (Default)
set define on;
